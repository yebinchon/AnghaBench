; ModuleID = '/home/carl/AnghaBench/linux/security/keys/extr_keyring.c_keyring_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/security/keys/extr_keyring.c_keyring_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key = type { i32, %struct.key_restriction*, %struct.TYPE_3__, i64 }
%struct.key_restriction = type { i32 }
%struct.TYPE_3__ = type { i32* }

@keyring_name_lock = common dso_local global i32 0, align 4
@keyring_assoc_array_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.key*)* @keyring_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @keyring_destroy(%struct.key* %0) #0 {
  %2 = alloca %struct.key*, align 8
  %3 = alloca %struct.key_restriction*, align 8
  store %struct.key* %0, %struct.key** %2, align 8
  %4 = load %struct.key*, %struct.key** %2, align 8
  %5 = getelementptr inbounds %struct.key, %struct.key* %4, i32 0, i32 3
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %26

8:                                                ; preds = %1
  %9 = call i32 @write_lock(i32* @keyring_name_lock)
  %10 = load %struct.key*, %struct.key** %2, align 8
  %11 = getelementptr inbounds %struct.key, %struct.key* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %24

15:                                               ; preds = %8
  %16 = load %struct.key*, %struct.key** %2, align 8
  %17 = getelementptr inbounds %struct.key, %struct.key* %16, i32 0, i32 2
  %18 = call i32 @list_empty(%struct.TYPE_3__* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %15
  %21 = load %struct.key*, %struct.key** %2, align 8
  %22 = getelementptr inbounds %struct.key, %struct.key* %21, i32 0, i32 2
  %23 = call i32 @list_del(%struct.TYPE_3__* %22)
  br label %24

24:                                               ; preds = %20, %15, %8
  %25 = call i32 @write_unlock(i32* @keyring_name_lock)
  br label %26

26:                                               ; preds = %24, %1
  %27 = load %struct.key*, %struct.key** %2, align 8
  %28 = getelementptr inbounds %struct.key, %struct.key* %27, i32 0, i32 1
  %29 = load %struct.key_restriction*, %struct.key_restriction** %28, align 8
  %30 = icmp ne %struct.key_restriction* %29, null
  br i1 %30, label %31, label %41

31:                                               ; preds = %26
  %32 = load %struct.key*, %struct.key** %2, align 8
  %33 = getelementptr inbounds %struct.key, %struct.key* %32, i32 0, i32 1
  %34 = load %struct.key_restriction*, %struct.key_restriction** %33, align 8
  store %struct.key_restriction* %34, %struct.key_restriction** %3, align 8
  %35 = load %struct.key_restriction*, %struct.key_restriction** %3, align 8
  %36 = getelementptr inbounds %struct.key_restriction, %struct.key_restriction* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @key_put(i32 %37)
  %39 = load %struct.key_restriction*, %struct.key_restriction** %3, align 8
  %40 = call i32 @kfree(%struct.key_restriction* %39)
  br label %41

41:                                               ; preds = %31, %26
  %42 = load %struct.key*, %struct.key** %2, align 8
  %43 = getelementptr inbounds %struct.key, %struct.key* %42, i32 0, i32 0
  %44 = call i32 @assoc_array_destroy(i32* %43, i32* @keyring_assoc_array_ops)
  ret void
}

declare dso_local i32 @write_lock(i32*) #1

declare dso_local i32 @list_empty(%struct.TYPE_3__*) #1

declare dso_local i32 @list_del(%struct.TYPE_3__*) #1

declare dso_local i32 @write_unlock(i32*) #1

declare dso_local i32 @key_put(i32) #1

declare dso_local i32 @kfree(%struct.key_restriction*) #1

declare dso_local i32 @assoc_array_destroy(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

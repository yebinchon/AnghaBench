; ModuleID = '/home/carl/AnghaBench/linux/security/keys/extr_keyring.c_keyring_clear.c'
source_filename = "/home/carl/AnghaBench/linux/security/keys/extr_keyring.c_keyring_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key = type { i32, i32, i32* }
%struct.assoc_array_edit = type { i32 }

@key_type_keyring = common dso_local global i32 0, align 4
@ENOTDIR = common dso_local global i32 0, align 4
@keyring_assoc_array_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @keyring_clear(%struct.key* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.key*, align 8
  %4 = alloca %struct.assoc_array_edit*, align 8
  %5 = alloca i32, align 4
  store %struct.key* %0, %struct.key** %3, align 8
  %6 = load %struct.key*, %struct.key** %3, align 8
  %7 = getelementptr inbounds %struct.key, %struct.key* %6, i32 0, i32 2
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, @key_type_keyring
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOTDIR, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %40

13:                                               ; preds = %1
  %14 = load %struct.key*, %struct.key** %3, align 8
  %15 = getelementptr inbounds %struct.key, %struct.key* %14, i32 0, i32 0
  %16 = call i32 @down_write(i32* %15)
  %17 = load %struct.key*, %struct.key** %3, align 8
  %18 = getelementptr inbounds %struct.key, %struct.key* %17, i32 0, i32 1
  %19 = call %struct.assoc_array_edit* @assoc_array_clear(i32* %18, i32* @keyring_assoc_array_ops)
  store %struct.assoc_array_edit* %19, %struct.assoc_array_edit** %4, align 8
  %20 = load %struct.assoc_array_edit*, %struct.assoc_array_edit** %4, align 8
  %21 = call i64 @IS_ERR(%struct.assoc_array_edit* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %13
  %24 = load %struct.assoc_array_edit*, %struct.assoc_array_edit** %4, align 8
  %25 = call i32 @PTR_ERR(%struct.assoc_array_edit* %24)
  store i32 %25, i32* %5, align 4
  br label %35

26:                                               ; preds = %13
  %27 = load %struct.assoc_array_edit*, %struct.assoc_array_edit** %4, align 8
  %28 = icmp ne %struct.assoc_array_edit* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load %struct.assoc_array_edit*, %struct.assoc_array_edit** %4, align 8
  %31 = call i32 @assoc_array_apply_edit(%struct.assoc_array_edit* %30)
  br label %32

32:                                               ; preds = %29, %26
  %33 = load %struct.key*, %struct.key** %3, align 8
  %34 = call i32 @key_payload_reserve(%struct.key* %33, i32 0)
  store i32 0, i32* %5, align 4
  br label %35

35:                                               ; preds = %32, %23
  %36 = load %struct.key*, %struct.key** %3, align 8
  %37 = getelementptr inbounds %struct.key, %struct.key* %36, i32 0, i32 0
  %38 = call i32 @up_write(i32* %37)
  %39 = load i32, i32* %5, align 4
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %35, %10
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @down_write(i32*) #1

declare dso_local %struct.assoc_array_edit* @assoc_array_clear(i32*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.assoc_array_edit*) #1

declare dso_local i32 @PTR_ERR(%struct.assoc_array_edit*) #1

declare dso_local i32 @assoc_array_apply_edit(%struct.assoc_array_edit*) #1

declare dso_local i32 @key_payload_reserve(%struct.key*, i32) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

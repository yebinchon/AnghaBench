; ModuleID = '/home/carl/AnghaBench/linux/security/keys/extr_keyring.c_keyring_publish_name.c'
source_filename = "/home/carl/AnghaBench/linux/security/keys/extr_keyring.c_keyring_publish_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key = type { i8*, i32 }
%struct.user_namespace = type { i32 }

@keyring_name_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.key*)* @keyring_publish_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @keyring_publish_name(%struct.key* %0) #0 {
  %2 = alloca %struct.key*, align 8
  %3 = alloca %struct.user_namespace*, align 8
  store %struct.key* %0, %struct.key** %2, align 8
  %4 = call %struct.user_namespace* (...) @current_user_ns()
  store %struct.user_namespace* %4, %struct.user_namespace** %3, align 8
  %5 = load %struct.key*, %struct.key** %2, align 8
  %6 = getelementptr inbounds %struct.key, %struct.key* %5, i32 0, i32 0
  %7 = load i8*, i8** %6, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %33

9:                                                ; preds = %1
  %10 = load %struct.key*, %struct.key** %2, align 8
  %11 = getelementptr inbounds %struct.key, %struct.key* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 0
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %33

17:                                               ; preds = %9
  %18 = load %struct.key*, %struct.key** %2, align 8
  %19 = getelementptr inbounds %struct.key, %struct.key* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 0
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %23, 46
  br i1 %24, label %25, label %33

25:                                               ; preds = %17
  %26 = call i32 @write_lock(i32* @keyring_name_lock)
  %27 = load %struct.key*, %struct.key** %2, align 8
  %28 = getelementptr inbounds %struct.key, %struct.key* %27, i32 0, i32 1
  %29 = load %struct.user_namespace*, %struct.user_namespace** %3, align 8
  %30 = getelementptr inbounds %struct.user_namespace, %struct.user_namespace* %29, i32 0, i32 0
  %31 = call i32 @list_add_tail(i32* %28, i32* %30)
  %32 = call i32 @write_unlock(i32* @keyring_name_lock)
  br label %33

33:                                               ; preds = %25, %17, %9, %1
  ret void
}

declare dso_local %struct.user_namespace* @current_user_ns(...) #1

declare dso_local i32 @write_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @write_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

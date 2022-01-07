; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_user_namespace.c_unshare_userns.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_user_namespace.c_unshare_userns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cred = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@CLONE_NEWUSER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unshare_userns(i64 %0, %struct.cred** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.cred**, align 8
  %6 = alloca %struct.cred*, align 8
  %7 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store %struct.cred** %1, %struct.cred*** %5, align 8
  %8 = load i32, i32* @ENOMEM, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %7, align 4
  %10 = load i64, i64* %4, align 8
  %11 = load i64, i64* @CLONE_NEWUSER, align 8
  %12 = and i64 %10, %11
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %33

15:                                               ; preds = %2
  %16 = call %struct.cred* (...) @prepare_creds()
  store %struct.cred* %16, %struct.cred** %6, align 8
  %17 = load %struct.cred*, %struct.cred** %6, align 8
  %18 = icmp ne %struct.cred* %17, null
  br i1 %18, label %19, label %31

19:                                               ; preds = %15
  %20 = load %struct.cred*, %struct.cred** %6, align 8
  %21 = call i32 @create_user_ns(%struct.cred* %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load %struct.cred*, %struct.cred** %6, align 8
  %26 = call i32 @put_cred(%struct.cred* %25)
  br label %30

27:                                               ; preds = %19
  %28 = load %struct.cred*, %struct.cred** %6, align 8
  %29 = load %struct.cred**, %struct.cred*** %5, align 8
  store %struct.cred* %28, %struct.cred** %29, align 8
  br label %30

30:                                               ; preds = %27, %24
  br label %31

31:                                               ; preds = %30, %15
  %32 = load i32, i32* %7, align 4
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %31, %14
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local %struct.cred* @prepare_creds(...) #1

declare dso_local i32 @create_user_ns(%struct.cred*) #1

declare dso_local i32 @put_cred(%struct.cred*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

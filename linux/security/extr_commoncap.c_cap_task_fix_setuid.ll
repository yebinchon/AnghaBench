; ModuleID = '/home/carl/AnghaBench/linux/security/extr_commoncap.c_cap_task_fix_setuid.c'
source_filename = "/home/carl/AnghaBench/linux/security/extr_commoncap.c_cap_task_fix_setuid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cred = type { i32, i32, i32, i32 }

@SECURE_NO_SETUID_FIXUP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cap_task_fix_setuid(%struct.cred* %0, %struct.cred* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cred*, align 8
  %6 = alloca %struct.cred*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.cred* %0, %struct.cred** %5, align 8
  store %struct.cred* %1, %struct.cred** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  switch i32 %9, label %74 [
    i32 129, label %10
    i32 130, label %10
    i32 128, label %10
    i32 131, label %19
  ]

10:                                               ; preds = %3, %3, %3
  %11 = load i32, i32* @SECURE_NO_SETUID_FIXUP, align 4
  %12 = call i32 @issecure(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = load %struct.cred*, %struct.cred** %5, align 8
  %16 = load %struct.cred*, %struct.cred** %6, align 8
  %17 = call i32 @cap_emulate_setxuid(%struct.cred* %15, %struct.cred* %16)
  br label %18

18:                                               ; preds = %14, %10
  br label %77

19:                                               ; preds = %3
  %20 = load i32, i32* @SECURE_NO_SETUID_FIXUP, align 4
  %21 = call i32 @issecure(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %73, label %23

23:                                               ; preds = %19
  %24 = load %struct.cred*, %struct.cred** %6, align 8
  %25 = getelementptr inbounds %struct.cred, %struct.cred* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @make_kuid(i32 %26, i32 0)
  store i32 %27, i32* %8, align 4
  %28 = load %struct.cred*, %struct.cred** %6, align 8
  %29 = getelementptr inbounds %struct.cred, %struct.cred* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @uid_eq(i32 %30, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %48

34:                                               ; preds = %23
  %35 = load %struct.cred*, %struct.cred** %5, align 8
  %36 = getelementptr inbounds %struct.cred, %struct.cred* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @uid_eq(i32 %37, i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %48, label %41

41:                                               ; preds = %34
  %42 = load %struct.cred*, %struct.cred** %5, align 8
  %43 = getelementptr inbounds %struct.cred, %struct.cred* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @cap_drop_fs_set(i32 %44)
  %46 = load %struct.cred*, %struct.cred** %5, align 8
  %47 = getelementptr inbounds %struct.cred, %struct.cred* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  br label %48

48:                                               ; preds = %41, %34, %23
  %49 = load %struct.cred*, %struct.cred** %6, align 8
  %50 = getelementptr inbounds %struct.cred, %struct.cred* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @uid_eq(i32 %51, i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %72, label %55

55:                                               ; preds = %48
  %56 = load %struct.cred*, %struct.cred** %5, align 8
  %57 = getelementptr inbounds %struct.cred, %struct.cred* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @uid_eq(i32 %58, i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %72

62:                                               ; preds = %55
  %63 = load %struct.cred*, %struct.cred** %5, align 8
  %64 = getelementptr inbounds %struct.cred, %struct.cred* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.cred*, %struct.cred** %5, align 8
  %67 = getelementptr inbounds %struct.cred, %struct.cred* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @cap_raise_fs_set(i32 %65, i32 %68)
  %70 = load %struct.cred*, %struct.cred** %5, align 8
  %71 = getelementptr inbounds %struct.cred, %struct.cred* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  br label %72

72:                                               ; preds = %62, %55, %48
  br label %73

73:                                               ; preds = %72, %19
  br label %77

74:                                               ; preds = %3
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %4, align 4
  br label %78

77:                                               ; preds = %73, %18
  store i32 0, i32* %4, align 4
  br label %78

78:                                               ; preds = %77, %74
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i32 @issecure(i32) #1

declare dso_local i32 @cap_emulate_setxuid(%struct.cred*, %struct.cred*) #1

declare dso_local i32 @make_kuid(i32, i32) #1

declare dso_local i32 @uid_eq(i32, i32) #1

declare dso_local i32 @cap_drop_fs_set(i32) #1

declare dso_local i32 @cap_raise_fs_set(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

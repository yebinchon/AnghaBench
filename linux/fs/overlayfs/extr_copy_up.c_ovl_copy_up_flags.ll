; ModuleID = '/home/carl/AnghaBench/linux/fs/overlayfs/extr_copy_up.c_ovl_copy_up_flags.c'
source_filename = "/home/carl/AnghaBench/linux/fs/overlayfs/extr_copy_up.c_ovl_copy_up_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32, i32 }
%struct.cred = type { i32 }

@DCACHE_DISCONNECTED = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ovl_copy_up_flags(%struct.dentry* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cred*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca %struct.dentry*, align 8
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %11 = load %struct.dentry*, %struct.dentry** %4, align 8
  %12 = getelementptr inbounds %struct.dentry, %struct.dentry* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.cred* @ovl_override_creds(i32 %13)
  store %struct.cred* %14, %struct.cred** %7, align 8
  %15 = load %struct.dentry*, %struct.dentry** %4, align 8
  %16 = getelementptr inbounds %struct.dentry, %struct.dentry* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @DCACHE_DISCONNECTED, align 4
  %19 = and i32 %17, %18
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = load %struct.dentry*, %struct.dentry** %4, align 8
  %24 = call i64 @d_is_dir(%struct.dentry* %23)
  %25 = icmp ne i64 %24, 0
  br label %26

26:                                               ; preds = %22, %2
  %27 = phi i1 [ false, %2 ], [ %25, %22 ]
  %28 = zext i1 %27 to i32
  %29 = call i64 @WARN_ON(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32, i32* @EIO, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %76

34:                                               ; preds = %26
  br label %35

35:                                               ; preds = %63, %34
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  br i1 %38, label %39, label %72

39:                                               ; preds = %35
  store %struct.dentry* null, %struct.dentry** %10, align 8
  %40 = load %struct.dentry*, %struct.dentry** %4, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call i64 @ovl_already_copied_up(%struct.dentry* %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %72

45:                                               ; preds = %39
  %46 = load %struct.dentry*, %struct.dentry** %4, align 8
  %47 = call %struct.dentry* @dget(%struct.dentry* %46)
  store %struct.dentry* %47, %struct.dentry** %9, align 8
  br label %48

48:                                               ; preds = %59, %45
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  br i1 %51, label %52, label %63

52:                                               ; preds = %48
  %53 = load %struct.dentry*, %struct.dentry** %9, align 8
  %54 = call %struct.dentry* @dget_parent(%struct.dentry* %53)
  store %struct.dentry* %54, %struct.dentry** %10, align 8
  %55 = load %struct.dentry*, %struct.dentry** %10, align 8
  %56 = call i64 @ovl_dentry_upper(%struct.dentry* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  br label %63

59:                                               ; preds = %52
  %60 = load %struct.dentry*, %struct.dentry** %9, align 8
  %61 = call i32 @dput(%struct.dentry* %60)
  %62 = load %struct.dentry*, %struct.dentry** %10, align 8
  store %struct.dentry* %62, %struct.dentry** %9, align 8
  br label %48

63:                                               ; preds = %58, %48
  %64 = load %struct.dentry*, %struct.dentry** %10, align 8
  %65 = load %struct.dentry*, %struct.dentry** %9, align 8
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @ovl_copy_up_one(%struct.dentry* %64, %struct.dentry* %65, i32 %66)
  store i32 %67, i32* %6, align 4
  %68 = load %struct.dentry*, %struct.dentry** %10, align 8
  %69 = call i32 @dput(%struct.dentry* %68)
  %70 = load %struct.dentry*, %struct.dentry** %9, align 8
  %71 = call i32 @dput(%struct.dentry* %70)
  br label %35

72:                                               ; preds = %44, %35
  %73 = load %struct.cred*, %struct.cred** %7, align 8
  %74 = call i32 @revert_creds(%struct.cred* %73)
  %75 = load i32, i32* %6, align 4
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %72, %31
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local %struct.cred* @ovl_override_creds(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @d_is_dir(%struct.dentry*) #1

declare dso_local i64 @ovl_already_copied_up(%struct.dentry*, i32) #1

declare dso_local %struct.dentry* @dget(%struct.dentry*) #1

declare dso_local %struct.dentry* @dget_parent(%struct.dentry*) #1

declare dso_local i64 @ovl_dentry_upper(%struct.dentry*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @ovl_copy_up_one(%struct.dentry*, %struct.dentry*, i32) #1

declare dso_local i32 @revert_creds(%struct.cred*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

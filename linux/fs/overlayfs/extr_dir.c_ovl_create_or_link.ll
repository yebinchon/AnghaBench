; ModuleID = '/home/carl/AnghaBench/linux/fs/overlayfs/extr_dir.c_ovl_create_or_link.c'
source_filename = "/home/carl/AnghaBench/linux/fs/overlayfs/extr_dir.c_ovl_create_or_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32, i32, %struct.dentry* }
%struct.inode = type { i32, i32 }
%struct.ovl_cattr = type { i32, i32 }
%struct.cred = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.inode*, %struct.ovl_cattr*, i32)* @ovl_create_or_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ovl_create_or_link(%struct.dentry* %0, %struct.inode* %1, %struct.ovl_cattr* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.ovl_cattr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.cred*, align 8
  %12 = alloca %struct.cred*, align 8
  %13 = alloca %struct.dentry*, align 8
  store %struct.dentry* %0, %struct.dentry** %6, align 8
  store %struct.inode* %1, %struct.inode** %7, align 8
  store %struct.ovl_cattr* %2, %struct.ovl_cattr** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.dentry*, %struct.dentry** %6, align 8
  %15 = getelementptr inbounds %struct.dentry, %struct.dentry* %14, i32 0, i32 2
  %16 = load %struct.dentry*, %struct.dentry** %15, align 8
  store %struct.dentry* %16, %struct.dentry** %13, align 8
  %17 = load %struct.dentry*, %struct.dentry** %13, align 8
  %18 = call i32 @ovl_copy_up(%struct.dentry* %17)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i32, i32* %10, align 4
  store i32 %22, i32* %5, align 4
  br label %101

23:                                               ; preds = %4
  %24 = load %struct.dentry*, %struct.dentry** %6, align 8
  %25 = getelementptr inbounds %struct.dentry, %struct.dentry* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.cred* @ovl_override_creds(i32 %26)
  store %struct.cred* %27, %struct.cred** %11, align 8
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %23
  %31 = load %struct.dentry*, %struct.dentry** %13, align 8
  %32 = load %struct.dentry*, %struct.dentry** %13, align 8
  %33 = call i32 @ovl_dentry_upper(%struct.dentry* %32)
  %34 = call i32 @ovl_set_impure(%struct.dentry* %31, i32 %33)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  br label %97

38:                                               ; preds = %30
  br label %39

39:                                               ; preds = %38, %23
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %10, align 4
  %42 = call %struct.cred* (...) @prepare_creds()
  store %struct.cred* %42, %struct.cred** %12, align 8
  %43 = load %struct.cred*, %struct.cred** %12, align 8
  %44 = icmp ne %struct.cred* %43, null
  br i1 %44, label %45, label %96

45:                                               ; preds = %39
  %46 = load %struct.inode*, %struct.inode** %7, align 8
  %47 = getelementptr inbounds %struct.inode, %struct.inode* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.cred*, %struct.cred** %12, align 8
  %50 = getelementptr inbounds %struct.cred, %struct.cred* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load %struct.inode*, %struct.inode** %7, align 8
  %52 = getelementptr inbounds %struct.inode, %struct.inode* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.cred*, %struct.cred** %12, align 8
  %55 = getelementptr inbounds %struct.cred, %struct.cred* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  %56 = load %struct.ovl_cattr*, %struct.ovl_cattr** %8, align 8
  %57 = getelementptr inbounds %struct.ovl_cattr, %struct.ovl_cattr* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %76, label %60

60:                                               ; preds = %45
  %61 = load %struct.dentry*, %struct.dentry** %6, align 8
  %62 = load %struct.ovl_cattr*, %struct.ovl_cattr** %8, align 8
  %63 = getelementptr inbounds %struct.ovl_cattr, %struct.ovl_cattr* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.dentry*, %struct.dentry** %6, align 8
  %66 = getelementptr inbounds %struct.dentry, %struct.dentry* %65, i32 0, i32 0
  %67 = load %struct.cred*, %struct.cred** %11, align 8
  %68 = load %struct.cred*, %struct.cred** %12, align 8
  %69 = call i32 @security_dentry_create_files_as(%struct.dentry* %61, i32 %64, i32* %66, %struct.cred* %67, %struct.cred* %68)
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* %10, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %60
  %73 = load %struct.cred*, %struct.cred** %12, align 8
  %74 = call i32 @put_cred(%struct.cred* %73)
  br label %97

75:                                               ; preds = %60
  br label %76

76:                                               ; preds = %75, %45
  %77 = load %struct.cred*, %struct.cred** %12, align 8
  %78 = call %struct.cred* @override_creds(%struct.cred* %77)
  %79 = call i32 @put_cred(%struct.cred* %78)
  %80 = load %struct.cred*, %struct.cred** %12, align 8
  %81 = call i32 @put_cred(%struct.cred* %80)
  %82 = load %struct.dentry*, %struct.dentry** %6, align 8
  %83 = call i32 @ovl_dentry_is_whiteout(%struct.dentry* %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %90, label %85

85:                                               ; preds = %76
  %86 = load %struct.dentry*, %struct.dentry** %6, align 8
  %87 = load %struct.inode*, %struct.inode** %7, align 8
  %88 = load %struct.ovl_cattr*, %struct.ovl_cattr** %8, align 8
  %89 = call i32 @ovl_create_upper(%struct.dentry* %86, %struct.inode* %87, %struct.ovl_cattr* %88)
  store i32 %89, i32* %10, align 4
  br label %95

90:                                               ; preds = %76
  %91 = load %struct.dentry*, %struct.dentry** %6, align 8
  %92 = load %struct.inode*, %struct.inode** %7, align 8
  %93 = load %struct.ovl_cattr*, %struct.ovl_cattr** %8, align 8
  %94 = call i32 @ovl_create_over_whiteout(%struct.dentry* %91, %struct.inode* %92, %struct.ovl_cattr* %93)
  store i32 %94, i32* %10, align 4
  br label %95

95:                                               ; preds = %90, %85
  br label %96

96:                                               ; preds = %95, %39
  br label %97

97:                                               ; preds = %96, %72, %37
  %98 = load %struct.cred*, %struct.cred** %11, align 8
  %99 = call i32 @revert_creds(%struct.cred* %98)
  %100 = load i32, i32* %10, align 4
  store i32 %100, i32* %5, align 4
  br label %101

101:                                              ; preds = %97, %21
  %102 = load i32, i32* %5, align 4
  ret i32 %102
}

declare dso_local i32 @ovl_copy_up(%struct.dentry*) #1

declare dso_local %struct.cred* @ovl_override_creds(i32) #1

declare dso_local i32 @ovl_set_impure(%struct.dentry*, i32) #1

declare dso_local i32 @ovl_dentry_upper(%struct.dentry*) #1

declare dso_local %struct.cred* @prepare_creds(...) #1

declare dso_local i32 @security_dentry_create_files_as(%struct.dentry*, i32, i32*, %struct.cred*, %struct.cred*) #1

declare dso_local i32 @put_cred(%struct.cred*) #1

declare dso_local %struct.cred* @override_creds(%struct.cred*) #1

declare dso_local i32 @ovl_dentry_is_whiteout(%struct.dentry*) #1

declare dso_local i32 @ovl_create_upper(%struct.dentry*, %struct.inode*, %struct.ovl_cattr*) #1

declare dso_local i32 @ovl_create_over_whiteout(%struct.dentry*, %struct.inode*, %struct.ovl_cattr*) #1

declare dso_local i32 @revert_creds(%struct.cred*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

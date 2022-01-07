; ModuleID = '/home/carl/AnghaBench/linux/fs/overlayfs/extr_dir.c_ovl_do_remove.c'
source_filename = "/home/carl/AnghaBench/linux/fs/overlayfs/extr_dir.c_ovl_do_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32, i32, i32 }
%struct.cred = type { i32 }

@list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, i32)* @ovl_do_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ovl_do_remove(%struct.dentry* %0, i32 %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.cred*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.dentry*, %struct.dentry** %3, align 8
  %10 = call i32 @ovl_lower_positive(%struct.dentry* %9)
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* @list, align 4
  %12 = call i32 @LIST_HEAD(i32 %11)
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %29

15:                                               ; preds = %2
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  %19 = load %struct.dentry*, %struct.dentry** %3, align 8
  %20 = call i32 @ovl_pure_upper(%struct.dentry* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %18, %15
  %23 = load %struct.dentry*, %struct.dentry** %3, align 8
  %24 = call i32 @ovl_check_empty_dir(%struct.dentry* %23, i32* @list)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %99

28:                                               ; preds = %22
  br label %29

29:                                               ; preds = %28, %18, %2
  %30 = load %struct.dentry*, %struct.dentry** %3, align 8
  %31 = call i32 @ovl_want_write(%struct.dentry* %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %99

35:                                               ; preds = %29
  %36 = load %struct.dentry*, %struct.dentry** %3, align 8
  %37 = getelementptr inbounds %struct.dentry, %struct.dentry* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @ovl_copy_up(i32 %38)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  br label %96

43:                                               ; preds = %35
  %44 = load %struct.dentry*, %struct.dentry** %3, align 8
  %45 = call i32 @ovl_nlink_start(%struct.dentry* %44)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  br label %96

49:                                               ; preds = %43
  %50 = load %struct.dentry*, %struct.dentry** %3, align 8
  %51 = getelementptr inbounds %struct.dentry, %struct.dentry* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call %struct.cred* @ovl_override_creds(i32 %52)
  store %struct.cred* %53, %struct.cred** %6, align 8
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %49
  %57 = load %struct.dentry*, %struct.dentry** %3, align 8
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @ovl_remove_upper(%struct.dentry* %57, i32 %58, i32* @list)
  store i32 %59, i32* %5, align 4
  br label %63

60:                                               ; preds = %49
  %61 = load %struct.dentry*, %struct.dentry** %3, align 8
  %62 = call i32 @ovl_remove_and_whiteout(%struct.dentry* %61, i32* @list)
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %60, %56
  %64 = load %struct.cred*, %struct.cred** %6, align 8
  %65 = call i32 @revert_creds(%struct.cred* %64)
  %66 = load i32, i32* %5, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %82, label %68

68:                                               ; preds = %63
  %69 = load i32, i32* %4, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %68
  %72 = load %struct.dentry*, %struct.dentry** %3, align 8
  %73 = getelementptr inbounds %struct.dentry, %struct.dentry* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @clear_nlink(i32 %74)
  br label %81

76:                                               ; preds = %68
  %77 = load %struct.dentry*, %struct.dentry** %3, align 8
  %78 = getelementptr inbounds %struct.dentry, %struct.dentry* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @drop_nlink(i32 %79)
  br label %81

81:                                               ; preds = %76, %71
  br label %82

82:                                               ; preds = %81, %63
  %83 = load %struct.dentry*, %struct.dentry** %3, align 8
  %84 = call i32 @ovl_nlink_end(%struct.dentry* %83)
  %85 = load %struct.dentry*, %struct.dentry** %3, align 8
  %86 = call %struct.dentry* @ovl_dentry_upper(%struct.dentry* %85)
  store %struct.dentry* %86, %struct.dentry** %7, align 8
  %87 = load %struct.dentry*, %struct.dentry** %7, align 8
  %88 = icmp ne %struct.dentry* %87, null
  br i1 %88, label %89, label %95

89:                                               ; preds = %82
  %90 = load %struct.dentry*, %struct.dentry** %7, align 8
  %91 = call i32 @d_inode(%struct.dentry* %90)
  %92 = load %struct.dentry*, %struct.dentry** %3, align 8
  %93 = call i32 @d_inode(%struct.dentry* %92)
  %94 = call i32 @ovl_copyattr(i32 %91, i32 %93)
  br label %95

95:                                               ; preds = %89, %82
  br label %96

96:                                               ; preds = %95, %48, %42
  %97 = load %struct.dentry*, %struct.dentry** %3, align 8
  %98 = call i32 @ovl_drop_write(%struct.dentry* %97)
  br label %99

99:                                               ; preds = %96, %34, %27
  %100 = call i32 @ovl_cache_free(i32* @list)
  %101 = load i32, i32* %5, align 4
  ret i32 %101
}

declare dso_local i32 @ovl_lower_positive(%struct.dentry*) #1

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local i32 @ovl_pure_upper(%struct.dentry*) #1

declare dso_local i32 @ovl_check_empty_dir(%struct.dentry*, i32*) #1

declare dso_local i32 @ovl_want_write(%struct.dentry*) #1

declare dso_local i32 @ovl_copy_up(i32) #1

declare dso_local i32 @ovl_nlink_start(%struct.dentry*) #1

declare dso_local %struct.cred* @ovl_override_creds(i32) #1

declare dso_local i32 @ovl_remove_upper(%struct.dentry*, i32, i32*) #1

declare dso_local i32 @ovl_remove_and_whiteout(%struct.dentry*, i32*) #1

declare dso_local i32 @revert_creds(%struct.cred*) #1

declare dso_local i32 @clear_nlink(i32) #1

declare dso_local i32 @drop_nlink(i32) #1

declare dso_local i32 @ovl_nlink_end(%struct.dentry*) #1

declare dso_local %struct.dentry* @ovl_dentry_upper(%struct.dentry*) #1

declare dso_local i32 @ovl_copyattr(i32, i32) #1

declare dso_local i32 @d_inode(%struct.dentry*) #1

declare dso_local i32 @ovl_drop_write(%struct.dentry*) #1

declare dso_local i32 @ovl_cache_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

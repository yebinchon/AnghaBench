; ModuleID = '/home/carl/AnghaBench/linux/fs/overlayfs/extr_dir.c_ovl_remove_and_whiteout.c'
source_filename = "/home/carl/AnghaBench/linux/fs/overlayfs/extr_dir.c_ovl_remove_and_whiteout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.dentry*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.list_head = type { i32 }

@EROFS = common dso_local global i32 0, align 4
@ESTALE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.list_head*)* @ovl_remove_and_whiteout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ovl_remove_and_whiteout(%struct.dentry* %0, %struct.list_head* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.list_head*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store %struct.list_head* %1, %struct.list_head** %5, align 8
  %11 = load %struct.dentry*, %struct.dentry** %4, align 8
  %12 = call %struct.dentry* @ovl_workdir(%struct.dentry* %11)
  store %struct.dentry* %12, %struct.dentry** %6, align 8
  %13 = load %struct.dentry*, %struct.dentry** %4, align 8
  %14 = getelementptr inbounds %struct.dentry, %struct.dentry* %13, i32 0, i32 0
  %15 = load %struct.dentry*, %struct.dentry** %14, align 8
  %16 = call %struct.dentry* @ovl_dentry_upper(%struct.dentry* %15)
  store %struct.dentry* %16, %struct.dentry** %7, align 8
  store %struct.dentry* null, %struct.dentry** %9, align 8
  %17 = load %struct.dentry*, %struct.dentry** %6, align 8
  %18 = icmp ne %struct.dentry* %17, null
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i64 @WARN_ON(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load i32, i32* @EROFS, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %116

26:                                               ; preds = %2
  %27 = load %struct.list_head*, %struct.list_head** %5, align 8
  %28 = call i32 @list_empty(%struct.list_head* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %41, label %30

30:                                               ; preds = %26
  %31 = load %struct.dentry*, %struct.dentry** %4, align 8
  %32 = load %struct.list_head*, %struct.list_head** %5, align 8
  %33 = call %struct.dentry* @ovl_clear_empty(%struct.dentry* %31, %struct.list_head* %32)
  store %struct.dentry* %33, %struct.dentry** %9, align 8
  %34 = load %struct.dentry*, %struct.dentry** %9, align 8
  %35 = call i32 @PTR_ERR(%struct.dentry* %34)
  store i32 %35, i32* %10, align 4
  %36 = load %struct.dentry*, %struct.dentry** %9, align 8
  %37 = call i64 @IS_ERR(%struct.dentry* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  br label %114

40:                                               ; preds = %30
  br label %41

41:                                               ; preds = %40, %26
  %42 = load %struct.dentry*, %struct.dentry** %6, align 8
  %43 = load %struct.dentry*, %struct.dentry** %7, align 8
  %44 = call i32 @ovl_lock_rename_workdir(%struct.dentry* %42, %struct.dentry* %43)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  br label %111

48:                                               ; preds = %41
  %49 = load %struct.dentry*, %struct.dentry** %4, align 8
  %50 = getelementptr inbounds %struct.dentry, %struct.dentry* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.dentry*, %struct.dentry** %7, align 8
  %54 = load %struct.dentry*, %struct.dentry** %4, align 8
  %55 = getelementptr inbounds %struct.dentry, %struct.dentry* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call %struct.dentry* @lookup_one_len(i32 %52, %struct.dentry* %53, i32 %57)
  store %struct.dentry* %58, %struct.dentry** %8, align 8
  %59 = load %struct.dentry*, %struct.dentry** %8, align 8
  %60 = call i32 @PTR_ERR(%struct.dentry* %59)
  store i32 %60, i32* %10, align 4
  %61 = load %struct.dentry*, %struct.dentry** %8, align 8
  %62 = call i64 @IS_ERR(%struct.dentry* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %48
  br label %107

65:                                               ; preds = %48
  %66 = load i32, i32* @ESTALE, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %10, align 4
  %68 = load %struct.dentry*, %struct.dentry** %9, align 8
  %69 = icmp ne %struct.dentry* %68, null
  br i1 %69, label %70, label %74

70:                                               ; preds = %65
  %71 = load %struct.dentry*, %struct.dentry** %8, align 8
  %72 = load %struct.dentry*, %struct.dentry** %9, align 8
  %73 = icmp ne %struct.dentry* %71, %72
  br i1 %73, label %86, label %74

74:                                               ; preds = %70, %65
  %75 = load %struct.dentry*, %struct.dentry** %9, align 8
  %76 = icmp ne %struct.dentry* %75, null
  br i1 %76, label %87, label %77

77:                                               ; preds = %74
  %78 = load %struct.dentry*, %struct.dentry** %4, align 8
  %79 = call %struct.dentry* @ovl_dentry_upper(%struct.dentry* %78)
  %80 = icmp ne %struct.dentry* %79, null
  br i1 %80, label %81, label %87

81:                                               ; preds = %77
  %82 = load %struct.dentry*, %struct.dentry** %4, align 8
  %83 = load %struct.dentry*, %struct.dentry** %8, align 8
  %84 = call i32 @ovl_matches_upper(%struct.dentry* %82, %struct.dentry* %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %81, %70
  br label %104

87:                                               ; preds = %81, %77, %74
  %88 = load %struct.dentry*, %struct.dentry** %6, align 8
  %89 = load %struct.dentry*, %struct.dentry** %7, align 8
  %90 = call i32 @d_inode(%struct.dentry* %89)
  %91 = load %struct.dentry*, %struct.dentry** %8, align 8
  %92 = call i32 @ovl_cleanup_and_whiteout(%struct.dentry* %88, i32 %90, %struct.dentry* %91)
  store i32 %92, i32* %10, align 4
  %93 = load i32, i32* %10, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %87
  br label %101

96:                                               ; preds = %87
  %97 = load %struct.dentry*, %struct.dentry** %4, align 8
  %98 = getelementptr inbounds %struct.dentry, %struct.dentry* %97, i32 0, i32 0
  %99 = load %struct.dentry*, %struct.dentry** %98, align 8
  %100 = call i32 @ovl_dir_modified(%struct.dentry* %99, i32 1)
  br label %101

101:                                              ; preds = %96, %95
  %102 = load %struct.dentry*, %struct.dentry** %4, align 8
  %103 = call i32 @d_drop(%struct.dentry* %102)
  br label %104

104:                                              ; preds = %101, %86
  %105 = load %struct.dentry*, %struct.dentry** %8, align 8
  %106 = call i32 @dput(%struct.dentry* %105)
  br label %107

107:                                              ; preds = %104, %64
  %108 = load %struct.dentry*, %struct.dentry** %6, align 8
  %109 = load %struct.dentry*, %struct.dentry** %7, align 8
  %110 = call i32 @unlock_rename(%struct.dentry* %108, %struct.dentry* %109)
  br label %111

111:                                              ; preds = %107, %47
  %112 = load %struct.dentry*, %struct.dentry** %9, align 8
  %113 = call i32 @dput(%struct.dentry* %112)
  br label %114

114:                                              ; preds = %111, %39
  %115 = load i32, i32* %10, align 4
  store i32 %115, i32* %3, align 4
  br label %116

116:                                              ; preds = %114, %23
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local %struct.dentry* @ovl_workdir(%struct.dentry*) #1

declare dso_local %struct.dentry* @ovl_dentry_upper(%struct.dentry*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @list_empty(%struct.list_head*) #1

declare dso_local %struct.dentry* @ovl_clear_empty(%struct.dentry*, %struct.list_head*) #1

declare dso_local i32 @PTR_ERR(%struct.dentry*) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local i32 @ovl_lock_rename_workdir(%struct.dentry*, %struct.dentry*) #1

declare dso_local %struct.dentry* @lookup_one_len(i32, %struct.dentry*, i32) #1

declare dso_local i32 @ovl_matches_upper(%struct.dentry*, %struct.dentry*) #1

declare dso_local i32 @ovl_cleanup_and_whiteout(%struct.dentry*, i32, %struct.dentry*) #1

declare dso_local i32 @d_inode(%struct.dentry*) #1

declare dso_local i32 @ovl_dir_modified(%struct.dentry*, i32) #1

declare dso_local i32 @d_drop(%struct.dentry*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @unlock_rename(%struct.dentry*, %struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

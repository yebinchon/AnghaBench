; ModuleID = '/home/carl/AnghaBench/linux/fs/hpfs/extr_dnode.c_hpfs_remove_dtree.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hpfs/extr_dnode.c_hpfs_remove_dtree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.quad_buffer_head = type { i32 }
%struct.dnode = type { i32 }
%struct.hpfs_dirent = type { i64, i64, i32 }

@.str = private unnamed_addr constant [41 x i8] c"directory %08x is corrupted or not empty\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hpfs_remove_dtree(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.quad_buffer_head, align 4
  %6 = alloca %struct.dnode*, align 8
  %7 = alloca %struct.hpfs_dirent*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %10, align 4
  br label %12

12:                                               ; preds = %2, %41
  %13 = load %struct.super_block*, %struct.super_block** %3, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call %struct.dnode* @hpfs_map_dnode(%struct.super_block* %13, i32 %14, %struct.quad_buffer_head* %5)
  store %struct.dnode* %15, %struct.dnode** %6, align 8
  %16 = icmp ne %struct.dnode* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  br label %128

18:                                               ; preds = %12
  %19 = load %struct.dnode*, %struct.dnode** %6, align 8
  %20 = call %struct.hpfs_dirent* @dnode_first_de(%struct.dnode* %19)
  store %struct.hpfs_dirent* %20, %struct.hpfs_dirent** %7, align 8
  %21 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %7, align 8
  %22 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %40

25:                                               ; preds = %18
  %26 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %7, align 8
  %27 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %7, align 8
  %32 = call i32 @de_down_pointer(%struct.hpfs_dirent* %31)
  store i32 %32, i32* %8, align 4
  br label %34

33:                                               ; preds = %25
  br label %120

34:                                               ; preds = %30
  %35 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %5)
  %36 = load %struct.super_block*, %struct.super_block** %3, align 8
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @hpfs_free_dnode(%struct.super_block* %36, i32 %37)
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %4, align 4
  br label %41

40:                                               ; preds = %18
  br label %42

41:                                               ; preds = %34
  br label %12

42:                                               ; preds = %40
  %43 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %7, align 8
  %44 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %42
  br label %120

48:                                               ; preds = %42
  %49 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %7, align 8
  %50 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %7, align 8
  %55 = call i32 @de_down_pointer(%struct.hpfs_dirent* %54)
  br label %57

56:                                               ; preds = %48
  br label %57

57:                                               ; preds = %56, %53
  %58 = phi i32 [ %55, %53 ], [ 0, %56 ]
  store i32 %58, i32* %8, align 4
  %59 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %7, align 8
  %60 = call %struct.hpfs_dirent* @de_next_de(%struct.hpfs_dirent* %59)
  store %struct.hpfs_dirent* %60, %struct.hpfs_dirent** %7, align 8
  %61 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %7, align 8
  %62 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %57
  br label %120

66:                                               ; preds = %57
  %67 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %7, align 8
  %68 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %7, align 8
  %73 = call i32 @de_down_pointer(%struct.hpfs_dirent* %72)
  br label %75

74:                                               ; preds = %66
  br label %75

75:                                               ; preds = %74, %71
  %76 = phi i32 [ %73, %71 ], [ 0, %74 ]
  store i32 %76, i32* %9, align 4
  %77 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %5)
  %78 = load %struct.super_block*, %struct.super_block** %3, align 8
  %79 = load i32, i32* %4, align 4
  %80 = call i32 @hpfs_free_dnode(%struct.super_block* %78, i32 %79)
  br label %81

81:                                               ; preds = %116, %75
  br label %82

82:                                               ; preds = %108, %81
  %83 = load i32, i32* %8, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %114

85:                                               ; preds = %82
  %86 = load %struct.super_block*, %struct.super_block** %3, align 8
  %87 = load i32, i32* %8, align 4
  store i32 %87, i32* %4, align 4
  %88 = call %struct.dnode* @hpfs_map_dnode(%struct.super_block* %86, i32 %87, %struct.quad_buffer_head* %5)
  store %struct.dnode* %88, %struct.dnode** %6, align 8
  %89 = icmp ne %struct.dnode* %88, null
  br i1 %89, label %91, label %90

90:                                               ; preds = %85
  br label %128

91:                                               ; preds = %85
  %92 = load %struct.dnode*, %struct.dnode** %6, align 8
  %93 = call %struct.hpfs_dirent* @dnode_first_de(%struct.dnode* %92)
  store %struct.hpfs_dirent* %93, %struct.hpfs_dirent** %7, align 8
  %94 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %7, align 8
  %95 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %91
  br label %120

99:                                               ; preds = %91
  %100 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %7, align 8
  %101 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %99
  %105 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %7, align 8
  %106 = call i32 @de_down_pointer(%struct.hpfs_dirent* %105)
  br label %108

107:                                              ; preds = %99
  br label %108

108:                                              ; preds = %107, %104
  %109 = phi i32 [ %106, %104 ], [ 0, %107 ]
  store i32 %109, i32* %8, align 4
  %110 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %5)
  %111 = load %struct.super_block*, %struct.super_block** %3, align 8
  %112 = load i32, i32* %4, align 4
  %113 = call i32 @hpfs_free_dnode(%struct.super_block* %111, i32 %112)
  br label %82

114:                                              ; preds = %82
  %115 = load i32, i32* %9, align 4
  store i32 %115, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %116

116:                                              ; preds = %114
  %117 = load i32, i32* %8, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %81, label %119

119:                                              ; preds = %116
  br label %128

120:                                              ; preds = %98, %65, %47, %33
  %121 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %5)
  %122 = load %struct.super_block*, %struct.super_block** %3, align 8
  %123 = load i32, i32* %4, align 4
  %124 = call i32 @hpfs_free_dnode(%struct.super_block* %122, i32 %123)
  %125 = load %struct.super_block*, %struct.super_block** %3, align 8
  %126 = load i32, i32* %10, align 4
  %127 = call i32 @hpfs_error(%struct.super_block* %125, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %126)
  br label %128

128:                                              ; preds = %120, %119, %90, %17
  ret void
}

declare dso_local %struct.dnode* @hpfs_map_dnode(%struct.super_block*, i32, %struct.quad_buffer_head*) #1

declare dso_local %struct.hpfs_dirent* @dnode_first_de(%struct.dnode*) #1

declare dso_local i32 @de_down_pointer(%struct.hpfs_dirent*) #1

declare dso_local i32 @hpfs_brelse4(%struct.quad_buffer_head*) #1

declare dso_local i32 @hpfs_free_dnode(%struct.super_block*, i32) #1

declare dso_local %struct.hpfs_dirent* @de_next_de(%struct.hpfs_dirent*) #1

declare dso_local i32 @hpfs_error(%struct.super_block*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/fs/hpfs/extr_dnode.c_map_dirent.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hpfs/extr_dnode.c_map_dirent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpfs_dirent = type { i64, i32, i32, i32 }
%struct.inode = type { i32, i32 }
%struct.quad_buffer_head = type { i32 }
%struct.dnode = type { i32 }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [29 x i8] c"map_dirent: not a directory\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"map_dirent\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.hpfs_dirent* @map_dirent(%struct.inode* %0, i32 %1, i8* %2, i32 %3, i32* %4, %struct.quad_buffer_head* %5) #0 {
  %7 = alloca %struct.hpfs_dirent*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.quad_buffer_head*, align 8
  %14 = alloca %struct.dnode*, align 8
  %15 = alloca %struct.hpfs_dirent*, align 8
  %16 = alloca %struct.hpfs_dirent*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store %struct.quad_buffer_head* %5, %struct.quad_buffer_head** %13, align 8
  store i32 0, i32* %18, align 4
  %20 = load %struct.inode*, %struct.inode** %8, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @S_ISDIR(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %6
  %26 = load %struct.inode*, %struct.inode** %8, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @hpfs_error(i32 %28, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %30

30:                                               ; preds = %25, %6
  br label %31

31:                                               ; preds = %100, %30
  %32 = load %struct.inode*, %struct.inode** %8, align 8
  %33 = getelementptr inbounds %struct.inode, %struct.inode* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call %struct.TYPE_2__* @hpfs_sb(i32 %34)
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %31
  %40 = load %struct.inode*, %struct.inode** %8, align 8
  %41 = getelementptr inbounds %struct.inode, %struct.inode* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %9, align 4
  %44 = call i64 @hpfs_stop_cycles(i32 %42, i32 %43, i32* %17, i32* %18, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  store %struct.hpfs_dirent* null, %struct.hpfs_dirent** %7, align 8
  br label %113

47:                                               ; preds = %39
  br label %48

48:                                               ; preds = %47, %31
  %49 = load %struct.inode*, %struct.inode** %8, align 8
  %50 = getelementptr inbounds %struct.inode, %struct.inode* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %9, align 4
  %53 = load %struct.quad_buffer_head*, %struct.quad_buffer_head** %13, align 8
  %54 = call %struct.dnode* @hpfs_map_dnode(i32 %51, i32 %52, %struct.quad_buffer_head* %53)
  store %struct.dnode* %54, %struct.dnode** %14, align 8
  %55 = icmp ne %struct.dnode* %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %48
  store %struct.hpfs_dirent* null, %struct.hpfs_dirent** %7, align 8
  br label %113

57:                                               ; preds = %48
  %58 = load %struct.dnode*, %struct.dnode** %14, align 8
  %59 = call %struct.hpfs_dirent* @dnode_end_de(%struct.dnode* %58)
  store %struct.hpfs_dirent* %59, %struct.hpfs_dirent** %16, align 8
  %60 = load %struct.dnode*, %struct.dnode** %14, align 8
  %61 = call %struct.hpfs_dirent* @dnode_first_de(%struct.dnode* %60)
  store %struct.hpfs_dirent* %61, %struct.hpfs_dirent** %15, align 8
  br label %62

62:                                               ; preds = %107, %57
  %63 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %15, align 8
  %64 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %16, align 8
  %65 = icmp ult %struct.hpfs_dirent* %63, %64
  br i1 %65, label %66, label %110

66:                                               ; preds = %62
  %67 = load %struct.inode*, %struct.inode** %8, align 8
  %68 = getelementptr inbounds %struct.inode, %struct.inode* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i8*, i8** %10, align 8
  %71 = load i32, i32* %11, align 4
  %72 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %15, align 8
  %73 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %15, align 8
  %76 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %15, align 8
  %79 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @hpfs_compare_names(i32 %69, i8* %70, i32 %71, i32 %74, i32 %77, i32 %80)
  store i32 %81, i32* %19, align 4
  %82 = load i32, i32* %19, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %92, label %84

84:                                               ; preds = %66
  %85 = load i32*, i32** %12, align 8
  %86 = icmp ne i32* %85, null
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load i32, i32* %9, align 4
  %89 = load i32*, i32** %12, align 8
  store i32 %88, i32* %89, align 4
  br label %90

90:                                               ; preds = %87, %84
  %91 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %15, align 8
  store %struct.hpfs_dirent* %91, %struct.hpfs_dirent** %7, align 8
  br label %113

92:                                               ; preds = %66
  %93 = load i32, i32* %19, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %106

95:                                               ; preds = %92
  %96 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %15, align 8
  %97 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %95
  %101 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %15, align 8
  %102 = call i32 @de_down_pointer(%struct.hpfs_dirent* %101)
  store i32 %102, i32* %9, align 4
  %103 = load %struct.quad_buffer_head*, %struct.quad_buffer_head** %13, align 8
  %104 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %103)
  br label %31

105:                                              ; preds = %95
  br label %110

106:                                              ; preds = %92
  br label %107

107:                                              ; preds = %106
  %108 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %15, align 8
  %109 = call %struct.hpfs_dirent* @de_next_de(%struct.hpfs_dirent* %108)
  store %struct.hpfs_dirent* %109, %struct.hpfs_dirent** %15, align 8
  br label %62

110:                                              ; preds = %105, %62
  %111 = load %struct.quad_buffer_head*, %struct.quad_buffer_head** %13, align 8
  %112 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %111)
  store %struct.hpfs_dirent* null, %struct.hpfs_dirent** %7, align 8
  br label %113

113:                                              ; preds = %110, %90, %56, %46
  %114 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %7, align 8
  ret %struct.hpfs_dirent* %114
}

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i32 @hpfs_error(i32, i8*) #1

declare dso_local %struct.TYPE_2__* @hpfs_sb(i32) #1

declare dso_local i64 @hpfs_stop_cycles(i32, i32, i32*, i32*, i8*) #1

declare dso_local %struct.dnode* @hpfs_map_dnode(i32, i32, %struct.quad_buffer_head*) #1

declare dso_local %struct.hpfs_dirent* @dnode_end_de(%struct.dnode*) #1

declare dso_local %struct.hpfs_dirent* @dnode_first_de(%struct.dnode*) #1

declare dso_local i32 @hpfs_compare_names(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @de_down_pointer(%struct.hpfs_dirent*) #1

declare dso_local i32 @hpfs_brelse4(%struct.quad_buffer_head*) #1

declare dso_local %struct.hpfs_dirent* @de_next_de(%struct.hpfs_dirent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

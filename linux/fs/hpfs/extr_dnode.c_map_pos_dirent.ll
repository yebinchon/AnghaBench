; ModuleID = '/home/carl/AnghaBench/linux/fs/hpfs/extr_dnode.c_map_pos_dirent.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hpfs/extr_dnode.c_map_pos_dirent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpfs_dirent = type { i64 }
%struct.inode = type { i32 }
%struct.quad_buffer_head = type { i32 }
%struct.dnode = type { i32, i64 }

@.str = private unnamed_addr constant [57 x i8] c"map_pos_dirent: pos crossed dnode boundary; pos = %08llx\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"map_pos_dirent: pos crossed dnode boundary; dnode = %08x\00", align 1
@.str.2 = private unnamed_addr constant [69 x i8] c"map_pos_dirent: pointer to dnode %08x not found in parent dnode %08x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.hpfs_dirent* @map_pos_dirent(%struct.inode* %0, i32* %1, %struct.quad_buffer_head* %2) #0 {
  %4 = alloca %struct.hpfs_dirent*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.quad_buffer_head*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.hpfs_dirent*, align 8
  %12 = alloca %struct.hpfs_dirent*, align 8
  %13 = alloca %struct.hpfs_dirent*, align 8
  %14 = alloca %struct.hpfs_dirent*, align 8
  %15 = alloca %struct.dnode*, align 8
  %16 = alloca %struct.dnode*, align 8
  %17 = alloca %struct.quad_buffer_head, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.quad_buffer_head* %2, %struct.quad_buffer_head** %7, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = ashr i32 %20, 6
  %22 = shl i32 %21, 2
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %8, align 4
  %24 = and i32 %23, 63
  store i32 %24, i32* %8, align 4
  %25 = load %struct.inode*, %struct.inode** %5, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.quad_buffer_head*, %struct.quad_buffer_head** %7, align 8
  %31 = call %struct.hpfs_dirent* @map_nth_dirent(i32 %27, i32 %28, i32 %29, %struct.quad_buffer_head* %30, %struct.dnode** %15)
  store %struct.hpfs_dirent* %31, %struct.hpfs_dirent** %11, align 8
  %32 = icmp ne %struct.hpfs_dirent* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %3
  br label %151

34:                                               ; preds = %3
  %35 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %11, align 8
  %36 = call %struct.hpfs_dirent* @de_next_de(%struct.hpfs_dirent* %35)
  store %struct.hpfs_dirent* %36, %struct.hpfs_dirent** %12, align 8
  %37 = load %struct.dnode*, %struct.dnode** %15, align 8
  %38 = call %struct.hpfs_dirent* @dnode_end_de(%struct.dnode* %37)
  %39 = icmp ult %struct.hpfs_dirent* %36, %38
  br i1 %39, label %40, label %73

40:                                               ; preds = %34
  %41 = load i32*, i32** %6, align 8
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 4
  %44 = and i32 %43, 63
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %55, label %46

46:                                               ; preds = %40
  %47 = load %struct.inode*, %struct.inode** %5, align 8
  %48 = getelementptr inbounds %struct.inode, %struct.inode* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** %6, align 8
  %51 = load i32, i32* %50, align 4
  %52 = sext i32 %51 to i64
  %53 = trunc i64 %52 to i32
  %54 = call i32 (i32, i8*, i32, ...) @hpfs_error(i32 %49, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %53)
  br label %151

55:                                               ; preds = %40
  %56 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %12, align 8
  %57 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %71

60:                                               ; preds = %55
  %61 = load %struct.inode*, %struct.inode** %5, align 8
  %62 = getelementptr inbounds %struct.inode, %struct.inode* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %12, align 8
  %65 = call i32 @de_down_pointer(%struct.hpfs_dirent* %64)
  %66 = call i64 @hpfs_de_as_down_as_possible(i32 %63, i32 %65)
  %67 = trunc i64 %66 to i32
  %68 = shl i32 %67, 4
  %69 = add nsw i32 %68, 1
  %70 = load i32*, i32** %6, align 8
  store i32 %69, i32* %70, align 4
  br label %71

71:                                               ; preds = %60, %55
  %72 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %11, align 8
  store %struct.hpfs_dirent* %72, %struct.hpfs_dirent** %4, align 8
  br label %154

73:                                               ; preds = %34
  %74 = load %struct.dnode*, %struct.dnode** %15, align 8
  %75 = getelementptr inbounds %struct.dnode, %struct.dnode* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  br label %151

79:                                               ; preds = %73
  %80 = load %struct.inode*, %struct.inode** %5, align 8
  %81 = getelementptr inbounds %struct.inode, %struct.inode* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.dnode*, %struct.dnode** %15, align 8
  %84 = getelementptr inbounds %struct.dnode, %struct.dnode* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i64 @le32_to_cpu(i32 %85)
  %87 = call %struct.dnode* @hpfs_map_dnode(i32 %82, i64 %86, %struct.quad_buffer_head* %17)
  store %struct.dnode* %87, %struct.dnode** %16, align 8
  %88 = icmp ne %struct.dnode* %87, null
  br i1 %88, label %90, label %89

89:                                               ; preds = %79
  br label %151

90:                                               ; preds = %79
  %91 = load %struct.dnode*, %struct.dnode** %16, align 8
  %92 = call %struct.hpfs_dirent* @dnode_end_de(%struct.dnode* %91)
  store %struct.hpfs_dirent* %92, %struct.hpfs_dirent** %14, align 8
  store i32 0, i32* %9, align 4
  %93 = load %struct.dnode*, %struct.dnode** %16, align 8
  %94 = call %struct.hpfs_dirent* @dnode_first_de(%struct.dnode* %93)
  store %struct.hpfs_dirent* %94, %struct.hpfs_dirent** %13, align 8
  br label %95

95:                                               ; preds = %137, %90
  %96 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %13, align 8
  %97 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %14, align 8
  %98 = icmp ult %struct.hpfs_dirent* %96, %97
  br i1 %98, label %99, label %140

99:                                               ; preds = %95
  %100 = load i32, i32* %9, align 4
  %101 = add i32 %100, 1
  store i32 %101, i32* %9, align 4
  %102 = and i32 %101, 63
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %114, label %104

104:                                              ; preds = %99
  %105 = load %struct.inode*, %struct.inode** %5, align 8
  %106 = getelementptr inbounds %struct.inode, %struct.inode* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.dnode*, %struct.dnode** %15, align 8
  %109 = getelementptr inbounds %struct.dnode, %struct.dnode* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = call i64 @le32_to_cpu(i32 %110)
  %112 = trunc i64 %111 to i32
  %113 = call i32 (i32, i8*, i32, ...) @hpfs_error(i32 %107, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %112)
  br label %114

114:                                              ; preds = %104, %99
  %115 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %13, align 8
  %116 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %136

119:                                              ; preds = %114
  %120 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %13, align 8
  %121 = call i32 @de_down_pointer(%struct.hpfs_dirent* %120)
  %122 = load i32, i32* %10, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %136

124:                                              ; preds = %119
  %125 = load %struct.dnode*, %struct.dnode** %15, align 8
  %126 = getelementptr inbounds %struct.dnode, %struct.dnode* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = call i64 @le32_to_cpu(i32 %127)
  %129 = trunc i64 %128 to i32
  %130 = shl i32 %129, 4
  %131 = load i32, i32* %9, align 4
  %132 = add i32 %130, %131
  %133 = load i32*, i32** %6, align 8
  store i32 %132, i32* %133, align 4
  %134 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %17)
  %135 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %11, align 8
  store %struct.hpfs_dirent* %135, %struct.hpfs_dirent** %4, align 8
  br label %154

136:                                              ; preds = %119, %114
  br label %137

137:                                              ; preds = %136
  %138 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %13, align 8
  %139 = call %struct.hpfs_dirent* @de_next_de(%struct.hpfs_dirent* %138)
  store %struct.hpfs_dirent* %139, %struct.hpfs_dirent** %13, align 8
  br label %95

140:                                              ; preds = %95
  %141 = load %struct.inode*, %struct.inode** %5, align 8
  %142 = getelementptr inbounds %struct.inode, %struct.inode* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* %10, align 4
  %145 = load %struct.dnode*, %struct.dnode** %15, align 8
  %146 = getelementptr inbounds %struct.dnode, %struct.dnode* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = call i64 @le32_to_cpu(i32 %147)
  %149 = call i32 (i32, i8*, i32, ...) @hpfs_error(i32 %143, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.2, i64 0, i64 0), i32 %144, i64 %148)
  %150 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %17)
  br label %151

151:                                              ; preds = %140, %89, %78, %46, %33
  %152 = load i32*, i32** %6, align 8
  store i32 12, i32* %152, align 4
  %153 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %11, align 8
  store %struct.hpfs_dirent* %153, %struct.hpfs_dirent** %4, align 8
  br label %154

154:                                              ; preds = %151, %124, %71
  %155 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %4, align 8
  ret %struct.hpfs_dirent* %155
}

declare dso_local %struct.hpfs_dirent* @map_nth_dirent(i32, i32, i32, %struct.quad_buffer_head*, %struct.dnode**) #1

declare dso_local %struct.hpfs_dirent* @de_next_de(%struct.hpfs_dirent*) #1

declare dso_local %struct.hpfs_dirent* @dnode_end_de(%struct.dnode*) #1

declare dso_local i32 @hpfs_error(i32, i8*, i32, ...) #1

declare dso_local i64 @hpfs_de_as_down_as_possible(i32, i32) #1

declare dso_local i32 @de_down_pointer(%struct.hpfs_dirent*) #1

declare dso_local %struct.dnode* @hpfs_map_dnode(i32, i64, %struct.quad_buffer_head*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local %struct.hpfs_dirent* @dnode_first_de(%struct.dnode*) #1

declare dso_local i32 @hpfs_brelse4(%struct.quad_buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

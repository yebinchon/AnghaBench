; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2_node.c_xfs_dir3_data_block_free.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2_node.c_xfs_dir3_data_block_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.xfs_inode* }
%struct.xfs_inode = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (%struct.xfs_dir2_free*, %struct.xfs_dir3_icfree_hdr*)*, i32* (%struct.xfs_dir2_free*)*, i32 (%struct.xfs_dir3_icfree_hdr*, %struct.xfs_dir2_free*)* }
%struct.xfs_dir3_icfree_hdr = type { i32, i32 }
%struct.xfs_dir2_data_hdr = type { i32 }
%struct.xfs_dir2_free = type { i32 }
%struct.xfs_buf = type { i32 }

@NULLDATAOFF = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, %struct.xfs_dir2_data_hdr*, %struct.xfs_dir2_free*, i32, i32, %struct.xfs_buf*, i32)* @xfs_dir3_data_block_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfs_dir3_data_block_free(%struct.TYPE_8__* %0, %struct.xfs_dir2_data_hdr* %1, %struct.xfs_dir2_free* %2, i32 %3, i32 %4, %struct.xfs_buf* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca %struct.xfs_dir2_data_hdr*, align 8
  %11 = alloca %struct.xfs_dir2_free*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.xfs_buf*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca %struct.xfs_dir3_icfree_hdr, align 4
  %19 = alloca %struct.xfs_inode*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %9, align 8
  store %struct.xfs_dir2_data_hdr* %1, %struct.xfs_dir2_data_hdr** %10, align 8
  store %struct.xfs_dir2_free* %2, %struct.xfs_dir2_free** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store %struct.xfs_buf* %5, %struct.xfs_buf** %14, align 8
  store i32 %6, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  %24 = load %struct.xfs_inode*, %struct.xfs_inode** %23, align 8
  store %struct.xfs_inode* %24, %struct.xfs_inode** %19, align 8
  %25 = load %struct.xfs_inode*, %struct.xfs_inode** %19, align 8
  %26 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %25, i32 0, i32 0
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 2
  %29 = load i32 (%struct.xfs_dir3_icfree_hdr*, %struct.xfs_dir2_free*)*, i32 (%struct.xfs_dir3_icfree_hdr*, %struct.xfs_dir2_free*)** %28, align 8
  %30 = load %struct.xfs_dir2_free*, %struct.xfs_dir2_free** %11, align 8
  %31 = call i32 %29(%struct.xfs_dir3_icfree_hdr* %18, %struct.xfs_dir2_free* %30)
  %32 = load %struct.xfs_inode*, %struct.xfs_inode** %19, align 8
  %33 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %32, i32 0, i32 0
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  %36 = load i32* (%struct.xfs_dir2_free*)*, i32* (%struct.xfs_dir2_free*)** %35, align 8
  %37 = load %struct.xfs_dir2_free*, %struct.xfs_dir2_free** %11, align 8
  %38 = call i32* %36(%struct.xfs_dir2_free* %37)
  store i32* %38, i32** %17, align 8
  %39 = load %struct.xfs_dir2_data_hdr*, %struct.xfs_dir2_data_hdr** %10, align 8
  %40 = icmp ne %struct.xfs_dir2_data_hdr* %39, null
  br i1 %40, label %41, label %53

41:                                               ; preds = %7
  %42 = load i32, i32* %15, align 4
  %43 = call i32 @cpu_to_be16(i32 %42)
  %44 = load i32*, i32** %17, align 8
  %45 = load i32, i32* %13, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  store i32 %43, i32* %47, align 4
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %49 = load %struct.xfs_buf*, %struct.xfs_buf** %14, align 8
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* %13, align 4
  %52 = call i32 @xfs_dir2_free_log_bests(%struct.TYPE_8__* %48, %struct.xfs_buf* %49, i32 %50, i32 %51)
  store i32 0, i32* %8, align 4
  br label %139

53:                                               ; preds = %7
  %54 = getelementptr inbounds %struct.xfs_dir3_icfree_hdr, %struct.xfs_dir3_icfree_hdr* %18, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %54, align 4
  %57 = load i32, i32* %13, align 4
  %58 = getelementptr inbounds %struct.xfs_dir3_icfree_hdr, %struct.xfs_dir3_icfree_hdr* %18, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = sub nsw i32 %59, 1
  %61 = icmp eq i32 %57, %60
  br i1 %61, label %62, label %86

62:                                               ; preds = %53
  %63 = load i32, i32* %13, align 4
  %64 = sub nsw i32 %63, 1
  store i32 %64, i32* %20, align 4
  br label %65

65:                                               ; preds = %79, %62
  %66 = load i32, i32* %20, align 4
  %67 = icmp sge i32 %66, 0
  br i1 %67, label %68, label %82

68:                                               ; preds = %65
  %69 = load i32*, i32** %17, align 8
  %70 = load i32, i32* %20, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @NULLDATAOFF, align 4
  %75 = call i32 @cpu_to_be16(i32 %74)
  %76 = icmp ne i32 %73, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %68
  br label %82

78:                                               ; preds = %68
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %20, align 4
  %81 = add nsw i32 %80, -1
  store i32 %81, i32* %20, align 4
  br label %65

82:                                               ; preds = %77, %65
  %83 = load i32, i32* %20, align 4
  %84 = add nsw i32 %83, 1
  %85 = getelementptr inbounds %struct.xfs_dir3_icfree_hdr, %struct.xfs_dir3_icfree_hdr* %18, i32 0, i32 0
  store i32 %84, i32* %85, align 4
  store i32 0, i32* %16, align 4
  br label %93

86:                                               ; preds = %53
  %87 = load i32, i32* @NULLDATAOFF, align 4
  %88 = call i32 @cpu_to_be16(i32 %87)
  %89 = load i32*, i32** %17, align 8
  %90 = load i32, i32* %13, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  store i32 %88, i32* %92, align 4
  store i32 1, i32* %16, align 4
  br label %93

93:                                               ; preds = %86, %82
  %94 = load %struct.xfs_inode*, %struct.xfs_inode** %19, align 8
  %95 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %94, i32 0, i32 0
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = load i32 (%struct.xfs_dir2_free*, %struct.xfs_dir3_icfree_hdr*)*, i32 (%struct.xfs_dir2_free*, %struct.xfs_dir3_icfree_hdr*)** %97, align 8
  %99 = load %struct.xfs_dir2_free*, %struct.xfs_dir2_free** %11, align 8
  %100 = call i32 %98(%struct.xfs_dir2_free* %99, %struct.xfs_dir3_icfree_hdr* %18)
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %102 = load %struct.xfs_buf*, %struct.xfs_buf** %14, align 8
  %103 = call i32 @xfs_dir2_free_log_header(%struct.TYPE_8__* %101, %struct.xfs_buf* %102)
  %104 = getelementptr inbounds %struct.xfs_dir3_icfree_hdr, %struct.xfs_dir3_icfree_hdr* %18, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %129, label %107

107:                                              ; preds = %93
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %109 = load i32, i32* %12, align 4
  %110 = load %struct.xfs_buf*, %struct.xfs_buf** %14, align 8
  %111 = call i32 @xfs_dir2_shrink_inode(%struct.TYPE_8__* %108, i32 %109, %struct.xfs_buf* %110)
  store i32 %111, i32* %21, align 4
  %112 = load i32, i32* %21, align 4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %107
  store %struct.xfs_buf* null, %struct.xfs_buf** %14, align 8
  store i32 0, i32* %16, align 4
  br label %128

115:                                              ; preds = %107
  %116 = load i32, i32* %21, align 4
  %117 = load i32, i32* @ENOSPC, align 4
  %118 = sub nsw i32 0, %117
  %119 = icmp ne i32 %116, %118
  br i1 %119, label %125, label %120

120:                                              ; preds = %115
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %120, %115
  %126 = load i32, i32* %21, align 4
  store i32 %126, i32* %8, align 4
  br label %139

127:                                              ; preds = %120
  br label %128

128:                                              ; preds = %127, %114
  br label %129

129:                                              ; preds = %128, %93
  %130 = load i32, i32* %16, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %138

132:                                              ; preds = %129
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %134 = load %struct.xfs_buf*, %struct.xfs_buf** %14, align 8
  %135 = load i32, i32* %13, align 4
  %136 = load i32, i32* %13, align 4
  %137 = call i32 @xfs_dir2_free_log_bests(%struct.TYPE_8__* %133, %struct.xfs_buf* %134, i32 %135, i32 %136)
  br label %138

138:                                              ; preds = %132, %129
  store i32 0, i32* %8, align 4
  br label %139

139:                                              ; preds = %138, %125, %41
  %140 = load i32, i32* %8, align 4
  ret i32 %140
}

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @xfs_dir2_free_log_bests(%struct.TYPE_8__*, %struct.xfs_buf*, i32, i32) #1

declare dso_local i32 @xfs_dir2_free_log_header(%struct.TYPE_8__*, %struct.xfs_buf*) #1

declare dso_local i32 @xfs_dir2_shrink_inode(%struct.TYPE_8__*, i32, %struct.xfs_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_localalloc.c_ocfs2_sync_local_to_main.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_localalloc.c_ocfs2_sync_local_to_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32 }
%struct.ocfs2_dinode = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.inode = type { i32 }
%struct.buffer_head = type { i32 }
%struct.ocfs2_local_alloc = type { i8*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_super*, i32*, %struct.ocfs2_dinode*, %struct.inode*, %struct.buffer_head*)* @ocfs2_sync_local_to_main to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_sync_local_to_main(%struct.ocfs2_super* %0, i32* %1, %struct.ocfs2_dinode* %2, %struct.inode* %3, %struct.buffer_head* %4) #0 {
  %6 = alloca %struct.ocfs2_super*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ocfs2_dinode*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca %struct.ocfs2_local_alloc*, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.ocfs2_dinode* %2, %struct.ocfs2_dinode** %8, align 8
  store %struct.inode* %3, %struct.inode** %9, align 8
  store %struct.buffer_head* %4, %struct.buffer_head** %10, align 8
  store i32 0, i32* %11, align 4
  %20 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %8, align 8
  %21 = call %struct.ocfs2_local_alloc* @OCFS2_LOCAL_ALLOC(%struct.ocfs2_dinode* %20)
  store %struct.ocfs2_local_alloc* %21, %struct.ocfs2_local_alloc** %19, align 8
  %22 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %8, align 8
  %23 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @le32_to_cpu(i32 %26)
  %28 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %8, align 8
  %29 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @le32_to_cpu(i32 %32)
  %34 = call i32 @trace_ocfs2_sync_local_to_main(i32 %27, i32 %33)
  %35 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %8, align 8
  %36 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %5
  br label %135

42:                                               ; preds = %5
  %43 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %8, align 8
  %44 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @le32_to_cpu(i32 %47)
  %49 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %8, align 8
  %50 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @le32_to_cpu(i32 %53)
  %55 = icmp eq i32 %48, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %42
  br label %135

57:                                               ; preds = %42
  %58 = load %struct.ocfs2_super*, %struct.ocfs2_super** %6, align 8
  %59 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.ocfs2_local_alloc*, %struct.ocfs2_local_alloc** %19, align 8
  %62 = getelementptr inbounds %struct.ocfs2_local_alloc, %struct.ocfs2_local_alloc* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @le32_to_cpu(i32 %63)
  %65 = call i64 @ocfs2_clusters_to_blocks(i32 %60, i32 %64)
  store i64 %65, i64* %16, align 8
  %66 = load %struct.ocfs2_local_alloc*, %struct.ocfs2_local_alloc** %19, align 8
  %67 = getelementptr inbounds %struct.ocfs2_local_alloc, %struct.ocfs2_local_alloc* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  store i8* %68, i8** %18, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %69 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %8, align 8
  %70 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @le32_to_cpu(i32 %73)
  store i32 %74, i32* %13, align 4
  br label %75

75:                                               ; preds = %131, %89, %57
  %76 = load i8*, i8** %18, align 8
  %77 = load i32, i32* %13, align 4
  %78 = load i32, i32* %15, align 4
  %79 = call i32 @ocfs2_find_next_zero_bit(i8* %76, i32 %77, i32 %78)
  store i32 %79, i32* %12, align 4
  %80 = icmp ne i32 %79, -1
  br i1 %80, label %81, label %134

81:                                               ; preds = %75
  %82 = load i32, i32* %12, align 4
  %83 = load i32, i32* %13, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %94

85:                                               ; preds = %81
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* %15, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %94

89:                                               ; preds = %85
  %90 = load i32, i32* %14, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %14, align 4
  %92 = load i32, i32* %15, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %15, align 4
  br label %75

94:                                               ; preds = %85, %81
  %95 = load i32, i32* %14, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %126

97:                                               ; preds = %94
  %98 = load i64, i64* %16, align 8
  %99 = load %struct.ocfs2_super*, %struct.ocfs2_super** %6, align 8
  %100 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %15, align 4
  %103 = load i32, i32* %14, align 4
  %104 = sub nsw i32 %102, %103
  %105 = call i64 @ocfs2_clusters_to_blocks(i32 %101, i32 %104)
  %106 = add nsw i64 %98, %105
  store i64 %106, i64* %17, align 8
  %107 = load i32, i32* %14, align 4
  %108 = load i32, i32* %15, align 4
  %109 = load i32, i32* %14, align 4
  %110 = sub nsw i32 %108, %109
  %111 = load i64, i64* %16, align 8
  %112 = load i64, i64* %17, align 8
  %113 = call i32 @trace_ocfs2_sync_local_to_main_free(i32 %107, i32 %110, i64 %111, i64 %112)
  %114 = load i32*, i32** %7, align 8
  %115 = load %struct.inode*, %struct.inode** %9, align 8
  %116 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %117 = load i64, i64* %17, align 8
  %118 = load i32, i32* %14, align 4
  %119 = call i32 @ocfs2_release_clusters(i32* %114, %struct.inode* %115, %struct.buffer_head* %116, i64 %117, i32 %118)
  store i32 %119, i32* %11, align 4
  %120 = load i32, i32* %11, align 4
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %97
  %123 = load i32, i32* %11, align 4
  %124 = call i32 @mlog_errno(i32 %123)
  br label %135

125:                                              ; preds = %97
  br label %126

126:                                              ; preds = %125, %94
  %127 = load i32, i32* %12, align 4
  %128 = load i32, i32* %13, align 4
  %129 = icmp sge i32 %127, %128
  br i1 %129, label %130, label %131

130:                                              ; preds = %126
  br label %134

131:                                              ; preds = %126
  store i32 1, i32* %14, align 4
  %132 = load i32, i32* %12, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %15, align 4
  br label %75

134:                                              ; preds = %130, %75
  br label %135

135:                                              ; preds = %134, %122, %56, %41
  %136 = load i32, i32* %11, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %135
  %139 = load i32, i32* %11, align 4
  %140 = call i32 @mlog_errno(i32 %139)
  br label %141

141:                                              ; preds = %138, %135
  %142 = load i32, i32* %11, align 4
  ret i32 %142
}

declare dso_local %struct.ocfs2_local_alloc* @OCFS2_LOCAL_ALLOC(%struct.ocfs2_dinode*) #1

declare dso_local i32 @trace_ocfs2_sync_local_to_main(i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i64 @ocfs2_clusters_to_blocks(i32, i32) #1

declare dso_local i32 @ocfs2_find_next_zero_bit(i8*, i32, i32) #1

declare dso_local i32 @trace_ocfs2_sync_local_to_main_free(i32, i32, i64, i64) #1

declare dso_local i32 @ocfs2_release_clusters(i32*, %struct.inode*, %struct.buffer_head*, i64, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

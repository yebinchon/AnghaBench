; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_refcounttree.c_ocfs2_complete_reflink.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_refcounttree.c_ocfs2_complete_reflink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, %struct.TYPE_3__, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_dinode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@OCFS2_INODE_UPDATE_CREDITS = common dso_local global i32 0, align 4
@OCFS2_JOURNAL_ACCESS_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.buffer_head*, %struct.inode*, %struct.buffer_head*, i32)* @ocfs2_complete_reflink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_complete_reflink(%struct.inode* %0, %struct.buffer_head* %1, %struct.inode* %2, %struct.buffer_head* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.ocfs2_dinode*, align 8
  %15 = alloca %struct.ocfs2_dinode*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_3__, align 4
  store %struct.inode* %0, %struct.inode** %7, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %8, align 8
  store %struct.inode* %2, %struct.inode** %9, align 8
  store %struct.buffer_head* %3, %struct.buffer_head** %10, align 8
  store i32 %4, i32* %11, align 4
  %18 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %19 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %21, %struct.ocfs2_dinode** %14, align 8
  %22 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %23 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %25, %struct.ocfs2_dinode** %15, align 8
  %26 = load %struct.inode*, %struct.inode** %7, align 8
  %27 = call i32 @i_size_read(%struct.inode* %26)
  store i32 %27, i32* %16, align 4
  %28 = load %struct.inode*, %struct.inode** %9, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @OCFS2_SB(i32 %30)
  %32 = load i32, i32* @OCFS2_INODE_UPDATE_CREDITS, align 4
  %33 = call i32* @ocfs2_start_trans(i32 %31, i32 %32)
  store i32* %33, i32** %13, align 8
  %34 = load i32*, i32** %13, align 8
  %35 = call i64 @IS_ERR(i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %5
  %38 = load i32*, i32** %13, align 8
  %39 = call i32 @PTR_ERR(i32* %38)
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  %41 = call i32 @mlog_errno(i32 %40)
  %42 = load i32, i32* %12, align 4
  store i32 %42, i32* %6, align 4
  br label %199

43:                                               ; preds = %5
  %44 = load i32*, i32** %13, align 8
  %45 = load %struct.inode*, %struct.inode** %9, align 8
  %46 = call i32 @INODE_CACHE(%struct.inode* %45)
  %47 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %48 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %49 = call i32 @ocfs2_journal_access_di(i32* %44, i32 %46, %struct.buffer_head* %47, i32 %48)
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* %12, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %43
  %53 = load i32, i32* %12, align 4
  %54 = call i32 @mlog_errno(i32 %53)
  br label %191

55:                                               ; preds = %43
  %56 = load %struct.inode*, %struct.inode** %9, align 8
  %57 = call %struct.TYPE_4__* @OCFS2_I(%struct.inode* %56)
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = call i32 @spin_lock(i32* %58)
  %60 = load %struct.inode*, %struct.inode** %7, align 8
  %61 = call %struct.TYPE_4__* @OCFS2_I(%struct.inode* %60)
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.inode*, %struct.inode** %9, align 8
  %65 = call %struct.TYPE_4__* @OCFS2_I(%struct.inode* %64)
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 3
  store i32 %63, i32* %66, align 4
  %67 = load %struct.inode*, %struct.inode** %7, align 8
  %68 = call %struct.TYPE_4__* @OCFS2_I(%struct.inode* %67)
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.inode*, %struct.inode** %9, align 8
  %72 = call %struct.TYPE_4__* @OCFS2_I(%struct.inode* %71)
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 2
  store i32 %70, i32* %73, align 4
  %74 = load %struct.inode*, %struct.inode** %7, align 8
  %75 = call %struct.TYPE_4__* @OCFS2_I(%struct.inode* %74)
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.inode*, %struct.inode** %9, align 8
  %79 = call %struct.TYPE_4__* @OCFS2_I(%struct.inode* %78)
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  store i32 %77, i32* %80, align 4
  %81 = load %struct.inode*, %struct.inode** %9, align 8
  %82 = call %struct.TYPE_4__* @OCFS2_I(%struct.inode* %81)
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = call i32 @spin_unlock(i32* %83)
  %85 = load %struct.inode*, %struct.inode** %9, align 8
  %86 = load i32, i32* %16, align 4
  %87 = call i32 @i_size_write(%struct.inode* %85, i32 %86)
  %88 = load %struct.inode*, %struct.inode** %7, align 8
  %89 = getelementptr inbounds %struct.inode, %struct.inode* %88, i32 0, i32 6
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.inode*, %struct.inode** %9, align 8
  %92 = getelementptr inbounds %struct.inode, %struct.inode* %91, i32 0, i32 6
  store i32 %90, i32* %92, align 4
  %93 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %14, align 8
  %94 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %93, i32 0, i32 11
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %15, align 8
  %97 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %96, i32 0, i32 11
  store i32 %95, i32* %97, align 4
  %98 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %14, align 8
  %99 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %98, i32 0, i32 10
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %15, align 8
  %102 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %101, i32 0, i32 10
  store i32 %100, i32* %102, align 4
  %103 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %14, align 8
  %104 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %103, i32 0, i32 9
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %15, align 8
  %107 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %106, i32 0, i32 9
  store i32 %105, i32* %107, align 4
  %108 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %14, align 8
  %109 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %108, i32 0, i32 8
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %15, align 8
  %112 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %111, i32 0, i32 8
  store i32 %110, i32* %112, align 4
  %113 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %14, align 8
  %114 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %113, i32 0, i32 7
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %15, align 8
  %117 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %116, i32 0, i32 7
  store i32 %115, i32* %117, align 4
  %118 = load i32, i32* %11, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %187

120:                                              ; preds = %55
  %121 = load %struct.inode*, %struct.inode** %7, align 8
  %122 = getelementptr inbounds %struct.inode, %struct.inode* %121, i32 0, i32 5
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.inode*, %struct.inode** %9, align 8
  %125 = getelementptr inbounds %struct.inode, %struct.inode* %124, i32 0, i32 5
  store i32 %123, i32* %125, align 4
  %126 = load %struct.inode*, %struct.inode** %7, align 8
  %127 = getelementptr inbounds %struct.inode, %struct.inode* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.inode*, %struct.inode** %9, align 8
  %130 = getelementptr inbounds %struct.inode, %struct.inode* %129, i32 0, i32 4
  store i32 %128, i32* %130, align 4
  %131 = load %struct.inode*, %struct.inode** %7, align 8
  %132 = getelementptr inbounds %struct.inode, %struct.inode* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.inode*, %struct.inode** %9, align 8
  %135 = getelementptr inbounds %struct.inode, %struct.inode* %134, i32 0, i32 3
  store i32 %133, i32* %135, align 4
  %136 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %14, align 8
  %137 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %136, i32 0, i32 6
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %15, align 8
  %140 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %139, i32 0, i32 6
  store i32 %138, i32* %140, align 4
  %141 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %14, align 8
  %142 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %141, i32 0, i32 5
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %15, align 8
  %145 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %144, i32 0, i32 5
  store i32 %143, i32* %145, align 4
  %146 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %14, align 8
  %147 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %146, i32 0, i32 4
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %15, align 8
  %150 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %149, i32 0, i32 4
  store i32 %148, i32* %150, align 4
  %151 = load %struct.inode*, %struct.inode** %9, align 8
  %152 = getelementptr inbounds %struct.inode, %struct.inode* %151, i32 0, i32 2
  %153 = load %struct.inode*, %struct.inode** %9, align 8
  %154 = call i64 @current_time(%struct.inode* %153)
  %155 = bitcast %struct.TYPE_3__* %17 to i64*
  store i64 %154, i64* %155, align 4
  %156 = bitcast %struct.TYPE_3__* %152 to i8*
  %157 = bitcast %struct.TYPE_3__* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %156, i8* align 4 %157, i64 8, i1 false)
  %158 = load %struct.inode*, %struct.inode** %9, align 8
  %159 = getelementptr inbounds %struct.inode, %struct.inode* %158, i32 0, i32 2
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @cpu_to_le64(i32 %161)
  %163 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %15, align 8
  %164 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %163, i32 0, i32 3
  store i32 %162, i32* %164, align 4
  %165 = load %struct.inode*, %struct.inode** %9, align 8
  %166 = getelementptr inbounds %struct.inode, %struct.inode* %165, i32 0, i32 2
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @cpu_to_le32(i32 %168)
  %170 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %15, align 8
  %171 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %170, i32 0, i32 2
  store i32 %169, i32* %171, align 4
  %172 = load %struct.inode*, %struct.inode** %7, align 8
  %173 = getelementptr inbounds %struct.inode, %struct.inode* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.inode*, %struct.inode** %9, align 8
  %176 = getelementptr inbounds %struct.inode, %struct.inode* %175, i32 0, i32 1
  store i32 %174, i32* %176, align 4
  %177 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %14, align 8
  %178 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %15, align 8
  %181 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %180, i32 0, i32 1
  store i32 %179, i32* %181, align 4
  %182 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %14, align 8
  %183 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %15, align 8
  %186 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %185, i32 0, i32 0
  store i32 %184, i32* %186, align 4
  br label %187

187:                                              ; preds = %120, %55
  %188 = load i32*, i32** %13, align 8
  %189 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %190 = call i32 @ocfs2_journal_dirty(i32* %188, %struct.buffer_head* %189)
  br label %191

191:                                              ; preds = %187, %52
  %192 = load %struct.inode*, %struct.inode** %9, align 8
  %193 = getelementptr inbounds %struct.inode, %struct.inode* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = call i32 @OCFS2_SB(i32 %194)
  %196 = load i32*, i32** %13, align 8
  %197 = call i32 @ocfs2_commit_trans(i32 %195, i32* %196)
  %198 = load i32, i32* %12, align 4
  store i32 %198, i32* %6, align 4
  br label %199

199:                                              ; preds = %191, %37
  %200 = load i32, i32* %6, align 4
  ret i32 %200
}

declare dso_local i32 @i_size_read(%struct.inode*) #1

declare dso_local i32* @ocfs2_start_trans(i32, i32) #1

declare dso_local i32 @OCFS2_SB(i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_journal_access_di(i32*, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.TYPE_4__* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @i_size_write(%struct.inode*, i32) #1

declare dso_local i64 @current_time(%struct.inode*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, %struct.buffer_head*) #1

declare dso_local i32 @ocfs2_commit_trans(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

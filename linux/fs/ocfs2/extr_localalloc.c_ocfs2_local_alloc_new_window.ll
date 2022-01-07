; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_localalloc.c_ocfs2_local_alloc_new_window.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_localalloc.c_ocfs2_local_alloc_new_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.ocfs2_alloc_context = type { i32, i32 }
%struct.ocfs2_dinode = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8*, i64 }
%struct.ocfs2_local_alloc = type { i8*, i32, i32 }

@ENOSPC = common dso_local global i32 0, align 4
@OCFS2_LA_EVENT_FRAGMENTED = common dso_local global i32 0, align 4
@OCFS2_LA_DISABLED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_super*, i32*, %struct.ocfs2_alloc_context*)* @ocfs2_local_alloc_new_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_local_alloc_new_window(%struct.ocfs2_super* %0, i32* %1, %struct.ocfs2_alloc_context* %2) #0 {
  %4 = alloca %struct.ocfs2_super*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ocfs2_alloc_context*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ocfs2_dinode*, align 8
  %11 = alloca %struct.ocfs2_local_alloc*, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.ocfs2_alloc_context* %2, %struct.ocfs2_alloc_context** %6, align 8
  store i32 0, i32* %7, align 4
  store %struct.ocfs2_dinode* null, %struct.ocfs2_dinode** %10, align 8
  %12 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %13 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %12, i32 0, i32 4
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %17, %struct.ocfs2_dinode** %10, align 8
  %18 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %10, align 8
  %19 = call %struct.ocfs2_local_alloc* @OCFS2_LOCAL_ALLOC(%struct.ocfs2_dinode* %18)
  store %struct.ocfs2_local_alloc* %19, %struct.ocfs2_local_alloc** %11, align 8
  %20 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %10, align 8
  %21 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 @le32_to_cpu(i8* %24)
  %26 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %27 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @trace_ocfs2_local_alloc_new_window(i32 %25, i32 %28)
  %30 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %31 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %6, align 8
  %34 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load i32*, i32** %5, align 8
  %36 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %6, align 8
  %37 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %38 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @ocfs2_claim_clusters(i32* %35, %struct.ocfs2_alloc_context* %36, i32 %39, i32* %8, i32* %9)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @ENOSPC, align 4
  %43 = sub nsw i32 0, %42
  %44 = icmp eq i32 %41, %43
  br i1 %44, label %45, label %84

45:                                               ; preds = %3
  br label %46

46:                                               ; preds = %69, %45
  %47 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %48 = load i32, i32* @OCFS2_LA_EVENT_FRAGMENTED, align 4
  %49 = call i64 @ocfs2_recalc_la_window(%struct.ocfs2_super* %47, i32 %48)
  %50 = load i64, i64* @OCFS2_LA_DISABLED, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  br label %144

53:                                               ; preds = %46
  %54 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %55 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %6, align 8
  %58 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = load i32*, i32** %5, align 8
  %60 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %6, align 8
  %61 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %62 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @ocfs2_claim_clusters(i32* %59, %struct.ocfs2_alloc_context* %60, i32 %63, i32* %8, i32* %9)
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* @ENOSPC, align 4
  %67 = sub nsw i32 0, %66
  %68 = icmp eq i32 %65, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %53
  br label %46

70:                                               ; preds = %53
  %71 = load i32, i32* %7, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %83

73:                                               ; preds = %70
  %74 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %75 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %74, i32 0, i32 2
  %76 = call i32 @spin_lock(i32* %75)
  %77 = load i32, i32* %9, align 4
  %78 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %79 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %78, i32 0, i32 3
  store i32 %77, i32* %79, align 4
  %80 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %81 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %80, i32 0, i32 2
  %82 = call i32 @spin_unlock(i32* %81)
  br label %83

83:                                               ; preds = %73, %70
  br label %84

84:                                               ; preds = %83, %3
  %85 = load i32, i32* %7, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %96

87:                                               ; preds = %84
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* @ENOSPC, align 4
  %90 = sub nsw i32 0, %89
  %91 = icmp ne i32 %88, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %87
  %93 = load i32, i32* %7, align 4
  %94 = call i32 @mlog_errno(i32 %93)
  br label %95

95:                                               ; preds = %92, %87
  br label %144

96:                                               ; preds = %84
  %97 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %6, align 8
  %98 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %101 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 4
  %102 = load i32, i32* %8, align 4
  %103 = call i8* @cpu_to_le32(i32 %102)
  %104 = load %struct.ocfs2_local_alloc*, %struct.ocfs2_local_alloc** %11, align 8
  %105 = getelementptr inbounds %struct.ocfs2_local_alloc, %struct.ocfs2_local_alloc* %104, i32 0, i32 0
  store i8* %103, i8** %105, align 8
  %106 = load i32, i32* %9, align 4
  %107 = call i8* @cpu_to_le32(i32 %106)
  %108 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %10, align 8
  %109 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  store i8* %107, i8** %111, align 8
  %112 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %10, align 8
  %113 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 1
  store i64 0, i64* %115, align 8
  %116 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %10, align 8
  %117 = call %struct.ocfs2_local_alloc* @OCFS2_LOCAL_ALLOC(%struct.ocfs2_dinode* %116)
  %118 = getelementptr inbounds %struct.ocfs2_local_alloc, %struct.ocfs2_local_alloc* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.ocfs2_local_alloc*, %struct.ocfs2_local_alloc** %11, align 8
  %121 = getelementptr inbounds %struct.ocfs2_local_alloc, %struct.ocfs2_local_alloc* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @le16_to_cpu(i32 %122)
  %124 = call i32 @memset(i32 %119, i32 0, i32 %123)
  %125 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %126 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %125, i32 0, i32 0
  %127 = load i32, i32* %9, align 4
  %128 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %10, align 8
  %129 = call %struct.ocfs2_local_alloc* @OCFS2_LOCAL_ALLOC(%struct.ocfs2_dinode* %128)
  %130 = getelementptr inbounds %struct.ocfs2_local_alloc, %struct.ocfs2_local_alloc* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @ocfs2_resmap_restart(i32* %126, i32 %127, i32 %131)
  %133 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %10, align 8
  %134 = call %struct.ocfs2_local_alloc* @OCFS2_LOCAL_ALLOC(%struct.ocfs2_dinode* %133)
  %135 = getelementptr inbounds %struct.ocfs2_local_alloc, %struct.ocfs2_local_alloc* %134, i32 0, i32 0
  %136 = load i8*, i8** %135, align 8
  %137 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %10, align 8
  %138 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 0
  %141 = load i8*, i8** %140, align 8
  %142 = call i32 @le32_to_cpu(i8* %141)
  %143 = call i32 @trace_ocfs2_local_alloc_new_window_result(i8* %136, i32 %142)
  br label %144

144:                                              ; preds = %96, %95, %52
  %145 = load i32, i32* %7, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %144
  %148 = load i32, i32* %7, align 4
  %149 = call i32 @mlog_errno(i32 %148)
  br label %150

150:                                              ; preds = %147, %144
  %151 = load i32, i32* %7, align 4
  ret i32 %151
}

declare dso_local %struct.ocfs2_local_alloc* @OCFS2_LOCAL_ALLOC(%struct.ocfs2_dinode*) #1

declare dso_local i32 @trace_ocfs2_local_alloc_new_window(i32, i32) #1

declare dso_local i32 @le32_to_cpu(i8*) #1

declare dso_local i32 @ocfs2_claim_clusters(i32*, %struct.ocfs2_alloc_context*, i32, i32*, i32*) #1

declare dso_local i64 @ocfs2_recalc_la_window(%struct.ocfs2_super*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ocfs2_resmap_restart(i32*, i32, i32) #1

declare dso_local i32 @trace_ocfs2_local_alloc_new_window_result(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_vfs.c_nfsd_splice_actor.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_vfs.c_nfsd_splice_actor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pipe_inode_info = type { i32 }
%struct.pipe_buffer = type { i32, %struct.page* }
%struct.page = type { i32 }
%struct.splice_desc = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.svc_rqst* }
%struct.svc_rqst = type { %struct.TYPE_4__, %struct.page** }
%struct.TYPE_4__ = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pipe_inode_info*, %struct.pipe_buffer*, %struct.splice_desc*)* @nfsd_splice_actor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsd_splice_actor(%struct.pipe_inode_info* %0, %struct.pipe_buffer* %1, %struct.splice_desc* %2) #0 {
  %4 = alloca %struct.pipe_inode_info*, align 8
  %5 = alloca %struct.pipe_buffer*, align 8
  %6 = alloca %struct.splice_desc*, align 8
  %7 = alloca %struct.svc_rqst*, align 8
  %8 = alloca %struct.page**, align 8
  %9 = alloca %struct.page*, align 8
  %10 = alloca i64, align 8
  store %struct.pipe_inode_info* %0, %struct.pipe_inode_info** %4, align 8
  store %struct.pipe_buffer* %1, %struct.pipe_buffer** %5, align 8
  store %struct.splice_desc* %2, %struct.splice_desc** %6, align 8
  %11 = load %struct.splice_desc*, %struct.splice_desc** %6, align 8
  %12 = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load %struct.svc_rqst*, %struct.svc_rqst** %13, align 8
  store %struct.svc_rqst* %14, %struct.svc_rqst** %7, align 8
  %15 = load %struct.svc_rqst*, %struct.svc_rqst** %7, align 8
  %16 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %15, i32 0, i32 1
  %17 = load %struct.page**, %struct.page*** %16, align 8
  store %struct.page** %17, %struct.page*** %8, align 8
  %18 = load %struct.pipe_buffer*, %struct.pipe_buffer** %5, align 8
  %19 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %18, i32 0, i32 1
  %20 = load %struct.page*, %struct.page** %19, align 8
  store %struct.page* %20, %struct.page** %9, align 8
  %21 = load %struct.splice_desc*, %struct.splice_desc** %6, align 8
  %22 = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %10, align 8
  %24 = load %struct.svc_rqst*, %struct.svc_rqst** %7, align 8
  %25 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %52

29:                                               ; preds = %3
  %30 = load %struct.page*, %struct.page** %9, align 8
  %31 = call i32 @get_page(%struct.page* %30)
  %32 = load %struct.svc_rqst*, %struct.svc_rqst** %7, align 8
  %33 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %32, i32 0, i32 1
  %34 = load %struct.page**, %struct.page*** %33, align 8
  %35 = load %struct.page*, %struct.page** %34, align 8
  %36 = call i32 @put_page(%struct.page* %35)
  %37 = load %struct.page*, %struct.page** %9, align 8
  %38 = load %struct.svc_rqst*, %struct.svc_rqst** %7, align 8
  %39 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %38, i32 0, i32 1
  %40 = load %struct.page**, %struct.page*** %39, align 8
  %41 = getelementptr inbounds %struct.page*, %struct.page** %40, i32 1
  store %struct.page** %41, %struct.page*** %39, align 8
  store %struct.page* %37, %struct.page** %40, align 8
  %42 = load %struct.pipe_buffer*, %struct.pipe_buffer** %5, align 8
  %43 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.svc_rqst*, %struct.svc_rqst** %7, align 8
  %46 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  store i32 %44, i32* %47, align 8
  %48 = load i64, i64* %10, align 8
  %49 = load %struct.svc_rqst*, %struct.svc_rqst** %7, align 8
  %50 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  store i64 %48, i64* %51, align 8
  br label %92

52:                                               ; preds = %3
  %53 = load %struct.page*, %struct.page** %9, align 8
  %54 = load %struct.page**, %struct.page*** %8, align 8
  %55 = getelementptr inbounds %struct.page*, %struct.page** %54, i64 -1
  %56 = load %struct.page*, %struct.page** %55, align 8
  %57 = icmp ne %struct.page* %53, %56
  br i1 %57, label %58, label %84

58:                                               ; preds = %52
  %59 = load %struct.page*, %struct.page** %9, align 8
  %60 = call i32 @get_page(%struct.page* %59)
  %61 = load %struct.svc_rqst*, %struct.svc_rqst** %7, align 8
  %62 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %61, i32 0, i32 1
  %63 = load %struct.page**, %struct.page*** %62, align 8
  %64 = load %struct.page*, %struct.page** %63, align 8
  %65 = icmp ne %struct.page* %64, null
  br i1 %65, label %66, label %72

66:                                               ; preds = %58
  %67 = load %struct.svc_rqst*, %struct.svc_rqst** %7, align 8
  %68 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %67, i32 0, i32 1
  %69 = load %struct.page**, %struct.page*** %68, align 8
  %70 = load %struct.page*, %struct.page** %69, align 8
  %71 = call i32 @put_page(%struct.page* %70)
  br label %72

72:                                               ; preds = %66, %58
  %73 = load %struct.page*, %struct.page** %9, align 8
  %74 = load %struct.svc_rqst*, %struct.svc_rqst** %7, align 8
  %75 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %74, i32 0, i32 1
  %76 = load %struct.page**, %struct.page*** %75, align 8
  %77 = getelementptr inbounds %struct.page*, %struct.page** %76, i32 1
  store %struct.page** %77, %struct.page*** %75, align 8
  store %struct.page* %73, %struct.page** %76, align 8
  %78 = load i64, i64* %10, align 8
  %79 = load %struct.svc_rqst*, %struct.svc_rqst** %7, align 8
  %80 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = add i64 %82, %78
  store i64 %83, i64* %81, align 8
  br label %91

84:                                               ; preds = %52
  %85 = load i64, i64* %10, align 8
  %86 = load %struct.svc_rqst*, %struct.svc_rqst** %7, align 8
  %87 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = add i64 %89, %85
  store i64 %90, i64* %88, align 8
  br label %91

91:                                               ; preds = %84, %72
  br label %92

92:                                               ; preds = %91, %29
  %93 = load i64, i64* %10, align 8
  %94 = trunc i64 %93 to i32
  ret i32 %94
}

declare dso_local i32 @get_page(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

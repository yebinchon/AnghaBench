; ModuleID = '/home/carl/AnghaBench/linux/fs/notify/fanotify/extr_fanotify.c_fanotify_encode_fid.c'
source_filename = "/home/carl/AnghaBench/linux/fs/notify/fanotify/extr_fanotify.c_fanotify_encode_fid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fanotify_event = type { i32, %struct.fanotify_fid }
%struct.fanotify_fid = type { i32*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.inode = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@FANOTIFY_INLINE_FH_LEN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@FILEID_INVALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [72 x i8] c"fanotify: failed to encode fid (fsid=%x.%x, type=%d, bytes=%d, err=%i)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fanotify_event*, %struct.inode*, i32, %struct.TYPE_3__*)* @fanotify_encode_fid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fanotify_encode_fid(%struct.fanotify_event* %0, %struct.inode* %1, i32 %2, %struct.TYPE_3__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.fanotify_event*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca %struct.fanotify_fid*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.fanotify_event* %0, %struct.fanotify_event** %6, align 8
  store %struct.inode* %1, %struct.inode** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_3__* %3, %struct.TYPE_3__** %9, align 8
  %15 = load %struct.fanotify_event*, %struct.fanotify_event** %6, align 8
  %16 = getelementptr inbounds %struct.fanotify_event, %struct.fanotify_event* %15, i32 0, i32 1
  store %struct.fanotify_fid* %16, %struct.fanotify_fid** %10, align 8
  store i32 0, i32* %12, align 4
  %17 = load %struct.fanotify_fid*, %struct.fanotify_fid** %10, align 8
  %18 = getelementptr inbounds %struct.fanotify_fid, %struct.fanotify_fid* %17, i32 0, i32 0
  store i32* null, i32** %18, align 8
  store i32 0, i32* %11, align 4
  %19 = load i32, i32* @ENOENT, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %13, align 4
  %21 = load %struct.inode*, %struct.inode** %7, align 8
  %22 = call i32 @exportfs_encode_inode_fh(%struct.inode* %21, i32* null, i32* %11, i32* null)
  store i32 %22, i32* %14, align 4
  %23 = load i32, i32* %11, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %4
  br label %76

26:                                               ; preds = %4
  %27 = load i32, i32* %11, align 4
  %28 = shl i32 %27, 2
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* @FANOTIFY_INLINE_FH_LEN, align 4
  %31 = icmp sgt i32 %29, %30
  br i1 %31, label %32, label %46

32:                                               ; preds = %26
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call i32* @kmalloc(i32 %35, i32 %36)
  %38 = load %struct.fanotify_fid*, %struct.fanotify_fid** %10, align 8
  %39 = getelementptr inbounds %struct.fanotify_fid, %struct.fanotify_fid* %38, i32 0, i32 0
  store i32* %37, i32** %39, align 8
  %40 = load %struct.fanotify_fid*, %struct.fanotify_fid** %10, align 8
  %41 = getelementptr inbounds %struct.fanotify_fid, %struct.fanotify_fid* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %32
  br label %76

45:                                               ; preds = %32
  br label %46

46:                                               ; preds = %45, %26
  %47 = load %struct.inode*, %struct.inode** %7, align 8
  %48 = load %struct.fanotify_fid*, %struct.fanotify_fid** %10, align 8
  %49 = load i32, i32* %12, align 4
  %50 = call i32* @fanotify_fid_fh(%struct.fanotify_fid* %48, i32 %49)
  %51 = call i32 @exportfs_encode_inode_fh(%struct.inode* %47, i32* %50, i32* %11, i32* null)
  store i32 %51, i32* %14, align 4
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %13, align 4
  %54 = load i32, i32* %14, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %46
  %57 = load i32, i32* %14, align 4
  %58 = load i32, i32* @FILEID_INVALID, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %65, label %60

60:                                               ; preds = %56
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* %11, align 4
  %63 = shl i32 %62, 2
  %64 = icmp ne i32 %61, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %60, %56, %46
  br label %76

66:                                               ; preds = %60
  %67 = load %struct.fanotify_fid*, %struct.fanotify_fid** %10, align 8
  %68 = getelementptr inbounds %struct.fanotify_fid, %struct.fanotify_fid* %67, i32 0, i32 1
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %70 = bitcast %struct.TYPE_3__* %68 to i8*
  %71 = bitcast %struct.TYPE_3__* %69 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %70, i8* align 8 %71, i64 8, i1 false)
  %72 = load i32, i32* %12, align 4
  %73 = load %struct.fanotify_event*, %struct.fanotify_event** %6, align 8
  %74 = getelementptr inbounds %struct.fanotify_event, %struct.fanotify_event* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load i32, i32* %14, align 4
  store i32 %75, i32* %5, align 4
  br label %100

76:                                               ; preds = %65, %44, %25
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %14, align 4
  %88 = load i32, i32* %12, align 4
  %89 = load i32, i32* %13, align 4
  %90 = call i32 @pr_warn_ratelimited(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), i32 %81, i32 %86, i32 %87, i32 %88, i32 %89)
  %91 = load %struct.fanotify_fid*, %struct.fanotify_fid** %10, align 8
  %92 = getelementptr inbounds %struct.fanotify_fid, %struct.fanotify_fid* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = call i32 @kfree(i32* %93)
  %95 = load %struct.fanotify_fid*, %struct.fanotify_fid** %10, align 8
  %96 = getelementptr inbounds %struct.fanotify_fid, %struct.fanotify_fid* %95, i32 0, i32 0
  store i32* null, i32** %96, align 8
  %97 = load %struct.fanotify_event*, %struct.fanotify_event** %6, align 8
  %98 = getelementptr inbounds %struct.fanotify_event, %struct.fanotify_event* %97, i32 0, i32 0
  store i32 0, i32* %98, align 8
  %99 = load i32, i32* @FILEID_INVALID, align 4
  store i32 %99, i32* %5, align 4
  br label %100

100:                                              ; preds = %76, %66
  %101 = load i32, i32* %5, align 4
  ret i32 %101
}

declare dso_local i32 @exportfs_encode_inode_fh(%struct.inode*, i32*, i32*, i32*) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32* @fanotify_fid_fh(%struct.fanotify_fid*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @pr_warn_ratelimited(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

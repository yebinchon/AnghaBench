; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_dir.c_ocfs2_check_dir_entry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_dir.c_ocfs2_check_dir_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.ocfs2_dir_entry = type { i32, i32, i32 }
%struct.buffer_head = type { i8* }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [32 x i8] c"rec_len is smaller than minimal\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"rec_len % 4 != 0\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"rec_len is too small for name_len\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"directory entry across blocks\00", align 1
@ML_ERROR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [84 x i8] c"bad entry in directory #%llu: %s - offset=%lu, inode=%llu, rec_len=%d, name_len=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.ocfs2_dir_entry*, %struct.buffer_head*, i64)* @ocfs2_check_dir_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_check_dir_entry(%struct.inode* %0, %struct.ocfs2_dir_entry* %1, %struct.buffer_head* %2, i64 %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.ocfs2_dir_entry*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.ocfs2_dir_entry* %1, %struct.ocfs2_dir_entry** %6, align 8
  store %struct.buffer_head* %2, %struct.buffer_head** %7, align 8
  store i64 %3, i64* %8, align 8
  store i8* null, i8** %9, align 8
  %11 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %6, align 8
  %12 = getelementptr inbounds %struct.ocfs2_dir_entry, %struct.ocfs2_dir_entry* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @le16_to_cpu(i32 %13)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = call i32 @OCFS2_DIR_REC_LEN(i32 1)
  %17 = icmp slt i32 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  br label %67

22:                                               ; preds = %4
  %23 = load i32, i32* %10, align 4
  %24 = srem i32 %23, 4
  %25 = icmp ne i32 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  br label %66

30:                                               ; preds = %22
  %31 = load i32, i32* %10, align 4
  %32 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %6, align 8
  %33 = getelementptr inbounds %struct.ocfs2_dir_entry, %struct.ocfs2_dir_entry* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @OCFS2_DIR_REC_LEN(i32 %34)
  %36 = icmp slt i32 %31, %35
  %37 = zext i1 %36 to i32
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %30
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8** %9, align 8
  br label %65

41:                                               ; preds = %30
  %42 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %6, align 8
  %43 = bitcast %struct.ocfs2_dir_entry* %42 to i8*
  %44 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %45 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = ptrtoint i8* %43 to i64
  %48 = ptrtoint i8* %46 to i64
  %49 = sub i64 %47, %48
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = add nsw i64 %49, %51
  %53 = load %struct.inode*, %struct.inode** %5, align 8
  %54 = getelementptr inbounds %struct.inode, %struct.inode* %53, i32 0, i32 0
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = sext i32 %57 to i64
  %59 = icmp sgt i64 %52, %58
  %60 = zext i1 %59 to i32
  %61 = call i64 @unlikely(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %41
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8** %9, align 8
  br label %64

64:                                               ; preds = %63, %41
  br label %65

65:                                               ; preds = %64, %40
  br label %66

66:                                               ; preds = %65, %29
  br label %67

67:                                               ; preds = %66, %21
  %68 = load i8*, i8** %9, align 8
  %69 = icmp ne i8* %68, null
  %70 = zext i1 %69 to i32
  %71 = call i64 @unlikely(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %90

73:                                               ; preds = %67
  %74 = load i32, i32* @ML_ERROR, align 4
  %75 = load %struct.inode*, %struct.inode** %5, align 8
  %76 = call %struct.TYPE_4__* @OCFS2_I(%struct.inode* %75)
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i8*, i8** %9, align 8
  %80 = load i64, i64* %8, align 8
  %81 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %6, align 8
  %82 = getelementptr inbounds %struct.ocfs2_dir_entry, %struct.ocfs2_dir_entry* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i64 @le64_to_cpu(i32 %83)
  %85 = load i32, i32* %10, align 4
  %86 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %6, align 8
  %87 = getelementptr inbounds %struct.ocfs2_dir_entry, %struct.ocfs2_dir_entry* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @mlog(i32 %74, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.4, i64 0, i64 0), i64 %78, i8* %79, i64 %80, i64 %84, i32 %85, i32 %88)
  br label %90

90:                                               ; preds = %73, %67
  %91 = load i8*, i8** %9, align 8
  %92 = icmp eq i8* %91, null
  %93 = zext i1 %92 to i64
  %94 = select i1 %92, i32 1, i32 0
  ret i32 %94
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @OCFS2_DIR_REC_LEN(i32) #1

declare dso_local i32 @mlog(i32, i8*, i64, i8*, i64, i64, i32, i32) #1

declare dso_local %struct.TYPE_4__* @OCFS2_I(%struct.inode*) #1

declare dso_local i64 @le64_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

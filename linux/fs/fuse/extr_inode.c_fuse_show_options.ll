; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_inode.c_fuse_show_options.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_inode.c_fuse_show_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.dentry = type { %struct.super_block* }
%struct.super_block = type { i32, i64 }
%struct.fuse_conn = type { i32, i64, i64, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [12 x i8] c",user_id=%u\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c",group_id=%u\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c",default_permissions\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c",allow_other\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c",max_read=%u\00", align 1
@FUSE_DEFAULT_BLKSIZE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [13 x i8] c",blksize=%lu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, %struct.dentry*)* @fuse_show_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuse_show_options(%struct.seq_file* %0, %struct.dentry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.fuse_conn*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  %8 = load %struct.dentry*, %struct.dentry** %5, align 8
  %9 = getelementptr inbounds %struct.dentry, %struct.dentry* %8, i32 0, i32 0
  %10 = load %struct.super_block*, %struct.super_block** %9, align 8
  store %struct.super_block* %10, %struct.super_block** %6, align 8
  %11 = load %struct.super_block*, %struct.super_block** %6, align 8
  %12 = call %struct.fuse_conn* @get_fuse_conn_super(%struct.super_block* %11)
  store %struct.fuse_conn* %12, %struct.fuse_conn** %7, align 8
  %13 = load %struct.fuse_conn*, %struct.fuse_conn** %7, align 8
  %14 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %13, i32 0, i32 6
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %81

18:                                               ; preds = %2
  %19 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %20 = load %struct.fuse_conn*, %struct.fuse_conn** %7, align 8
  %21 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.fuse_conn*, %struct.fuse_conn** %7, align 8
  %24 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @from_kuid_munged(i32 %22, i32 %25)
  %27 = call i32 @seq_printf(%struct.seq_file* %19, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %29 = load %struct.fuse_conn*, %struct.fuse_conn** %7, align 8
  %30 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.fuse_conn*, %struct.fuse_conn** %7, align 8
  %33 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @from_kgid_munged(i32 %31, i32 %34)
  %36 = call i32 @seq_printf(%struct.seq_file* %28, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load %struct.fuse_conn*, %struct.fuse_conn** %7, align 8
  %38 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %18
  %42 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %43 = call i32 @seq_puts(%struct.seq_file* %42, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %44

44:                                               ; preds = %41, %18
  %45 = load %struct.fuse_conn*, %struct.fuse_conn** %7, align 8
  %46 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %51 = call i32 @seq_puts(%struct.seq_file* %50, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  br label %52

52:                                               ; preds = %49, %44
  %53 = load %struct.fuse_conn*, %struct.fuse_conn** %7, align 8
  %54 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, -1
  br i1 %56, label %57, label %63

57:                                               ; preds = %52
  %58 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %59 = load %struct.fuse_conn*, %struct.fuse_conn** %7, align 8
  %60 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @seq_printf(%struct.seq_file* %58, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %61)
  br label %63

63:                                               ; preds = %57, %52
  %64 = load %struct.super_block*, %struct.super_block** %6, align 8
  %65 = getelementptr inbounds %struct.super_block, %struct.super_block* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %80

68:                                               ; preds = %63
  %69 = load %struct.super_block*, %struct.super_block** %6, align 8
  %70 = getelementptr inbounds %struct.super_block, %struct.super_block* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @FUSE_DEFAULT_BLKSIZE, align 4
  %73 = icmp ne i32 %71, %72
  br i1 %73, label %74, label %80

74:                                               ; preds = %68
  %75 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %76 = load %struct.super_block*, %struct.super_block** %6, align 8
  %77 = getelementptr inbounds %struct.super_block, %struct.super_block* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @seq_printf(%struct.seq_file* %75, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32 %78)
  br label %80

80:                                               ; preds = %74, %68, %63
  store i32 0, i32* %3, align 4
  br label %81

81:                                               ; preds = %80, %17
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local %struct.fuse_conn* @get_fuse_conn_super(%struct.super_block*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32) #1

declare dso_local i32 @from_kuid_munged(i32, i32) #1

declare dso_local i32 @from_kgid_munged(i32, i32) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

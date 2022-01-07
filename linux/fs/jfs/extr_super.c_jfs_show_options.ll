; ModuleID = '/home/carl/AnghaBench/linux/fs/jfs/extr_super.c_jfs_show_options.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jfs/extr_super.c_jfs_show_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.dentry = type { i32 }
%struct.jfs_sb_info = type { i32, i32, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c",uid=%d\00", align 1
@init_user_ns = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c",gid=%d\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c",umask=%03o\00", align 1
@JFS_NOINTEGRITY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c",nointegrity\00", align 1
@JFS_DISCARD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c",discard=%u\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c",iocharset=%s\00", align 1
@JFS_ERR_CONTINUE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [17 x i8] c",errors=continue\00", align 1
@JFS_ERR_PANIC = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [14 x i8] c",errors=panic\00", align 1
@JFS_GRPQUOTA = common dso_local global i32 0, align 4
@JFS_USRQUOTA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, %struct.dentry*)* @jfs_show_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jfs_show_options(%struct.seq_file* %0, %struct.dentry* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.jfs_sb_info*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.dentry* %1, %struct.dentry** %4, align 8
  %6 = load %struct.dentry*, %struct.dentry** %4, align 8
  %7 = getelementptr inbounds %struct.dentry, %struct.dentry* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.jfs_sb_info* @JFS_SBI(i32 %8)
  store %struct.jfs_sb_info* %9, %struct.jfs_sb_info** %5, align 8
  %10 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %5, align 8
  %11 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %10, i32 0, i32 5
  %12 = load i32, i32* %11, align 8
  %13 = call i64 @uid_valid(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %2
  %16 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %17 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %5, align 8
  %18 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @from_kuid(i32* @init_user_ns, i32 %19)
  %21 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %20)
  br label %22

22:                                               ; preds = %15, %2
  %23 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %5, align 8
  %24 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @gid_valid(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %22
  %29 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %30 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %5, align 8
  %31 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @from_kgid(i32* @init_user_ns, i32 %32)
  %34 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %28, %22
  %36 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %5, align 8
  %37 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, -1
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %42 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %5, align 8
  %43 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %41, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %40, %35
  %47 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %5, align 8
  %48 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @JFS_NOINTEGRITY, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %46
  %54 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %55 = call i32 @seq_puts(%struct.seq_file* %54, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  br label %56

56:                                               ; preds = %53, %46
  %57 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %5, align 8
  %58 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @JFS_DISCARD, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %56
  %64 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %65 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %5, align 8
  %66 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %64, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %67)
  br label %69

69:                                               ; preds = %63, %56
  %70 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %5, align 8
  %71 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %70, i32 0, i32 2
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = icmp ne %struct.TYPE_2__* %72, null
  br i1 %73, label %74, label %82

74:                                               ; preds = %69
  %75 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %76 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %5, align 8
  %77 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %76, i32 0, i32 2
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %75, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 %80)
  br label %82

82:                                               ; preds = %74, %69
  %83 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %5, align 8
  %84 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @JFS_ERR_CONTINUE, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %82
  %90 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %91 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %90, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  br label %92

92:                                               ; preds = %89, %82
  %93 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %5, align 8
  %94 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @JFS_ERR_PANIC, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %92
  %100 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %101 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %100, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  br label %102

102:                                              ; preds = %99, %92
  ret i32 0
}

declare dso_local %struct.jfs_sb_info* @JFS_SBI(i32) #1

declare dso_local i64 @uid_valid(i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #1

declare dso_local i32 @from_kuid(i32*, i32) #1

declare dso_local i64 @gid_valid(i32) #1

declare dso_local i32 @from_kgid(i32*, i32) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

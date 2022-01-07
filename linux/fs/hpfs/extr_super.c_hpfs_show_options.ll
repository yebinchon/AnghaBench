; ModuleID = '/home/carl/AnghaBench/linux/fs/hpfs/extr_super.c_hpfs_show_options.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hpfs/extr_super.c_hpfs_show_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.dentry = type { i32 }
%struct.hpfs_sb_info = type { i32, i32, i32, i32, i32, i32, i64, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c",uid=%u\00", align 1
@init_user_ns = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c",gid=%u\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c",umask=%03o\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c",case=lower\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c",check=none\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c",check=strict\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c",errors=continue\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c",errors=panic\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c",chkdsk=no\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c",chkdsk=always\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c",eas=no\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c",eas=ro\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c",timeshift=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, %struct.dentry*)* @hpfs_show_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpfs_show_options(%struct.seq_file* %0, %struct.dentry* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.hpfs_sb_info*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.dentry* %1, %struct.dentry** %4, align 8
  %6 = load %struct.dentry*, %struct.dentry** %4, align 8
  %7 = getelementptr inbounds %struct.dentry, %struct.dentry* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.hpfs_sb_info* @hpfs_sb(i32 %8)
  store %struct.hpfs_sb_info* %9, %struct.hpfs_sb_info** %5, align 8
  %10 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %11 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %5, align 8
  %12 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %11, i32 0, i32 8
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @from_kuid_munged(i32* @init_user_ns, i32 %13)
  %15 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %17 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %5, align 8
  %18 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %17, i32 0, i32 7
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @from_kgid_munged(i32* @init_user_ns, i32 %19)
  %21 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  %22 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %23 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %5, align 8
  %24 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = xor i32 %25, -1
  %27 = and i32 %26, 511
  %28 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %22, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %27)
  %29 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %5, align 8
  %30 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %29, i32 0, i32 6
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %2
  %34 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %35 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %34, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  br label %36

36:                                               ; preds = %33, %2
  %37 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %5, align 8
  %38 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %36
  %42 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %43 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %42, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  br label %44

44:                                               ; preds = %41, %36
  %45 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %5, align 8
  %46 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %47, 2
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %51 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %50, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  br label %52

52:                                               ; preds = %49, %44
  %53 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %5, align 8
  %54 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %52
  %58 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %59 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %58, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  br label %60

60:                                               ; preds = %57, %52
  %61 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %5, align 8
  %62 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = icmp eq i32 %63, 2
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %67 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %66, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  br label %68

68:                                               ; preds = %65, %60
  %69 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %5, align 8
  %70 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %68
  %74 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %75 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %74, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  br label %76

76:                                               ; preds = %73, %68
  %77 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %5, align 8
  %78 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = icmp eq i32 %79, 2
  br i1 %80, label %81, label %84

81:                                               ; preds = %76
  %82 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %83 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %82, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0))
  br label %84

84:                                               ; preds = %81, %76
  %85 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %5, align 8
  %86 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 8
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %84
  %90 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %91 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %90, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  br label %92

92:                                               ; preds = %89, %84
  %93 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %5, align 8
  %94 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 8
  %96 = icmp eq i32 %95, 1
  br i1 %96, label %97, label %100

97:                                               ; preds = %92
  %98 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %99 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %98, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0))
  br label %100

100:                                              ; preds = %97, %92
  %101 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %5, align 8
  %102 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %101, i32 0, i32 5
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %100
  %106 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %107 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %5, align 8
  %108 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %107, i32 0, i32 5
  %109 = load i32, i32* %108, align 4
  %110 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %106, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i32 %109)
  br label %111

111:                                              ; preds = %105, %100
  ret i32 0
}

declare dso_local %struct.hpfs_sb_info* @hpfs_sb(i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #1

declare dso_local i32 @from_kuid_munged(i32*, i32) #1

declare dso_local i32 @from_kgid_munged(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

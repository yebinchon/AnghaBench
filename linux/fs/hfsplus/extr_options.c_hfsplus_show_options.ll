; ModuleID = '/home/carl/AnghaBench/linux/fs/hfsplus/extr_options.c_hfsplus_show_options.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hfsplus/extr_options.c_hfsplus_show_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.dentry = type { i32 }
%struct.hfsplus_sb_info = type { i64, i64, i64, i64, i32, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i64 }

@HFSPLUS_DEF_CR_TYPE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"creator\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c",umask=%o,uid=%u,gid=%u\00", align 1
@init_user_ns = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c",part=%u\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c",session=%u\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c",nls=%s\00", align 1
@HFSPLUS_SB_NODECOMPOSE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [13 x i8] c",nodecompose\00", align 1
@HFSPLUS_SB_NOBARRIER = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [11 x i8] c",nobarrier\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hfsplus_show_options(%struct.seq_file* %0, %struct.dentry* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.hfsplus_sb_info*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.dentry* %1, %struct.dentry** %4, align 8
  %6 = load %struct.dentry*, %struct.dentry** %4, align 8
  %7 = getelementptr inbounds %struct.dentry, %struct.dentry* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.hfsplus_sb_info* @HFSPLUS_SB(i32 %8)
  store %struct.hfsplus_sb_info* %9, %struct.hfsplus_sb_info** %5, align 8
  %10 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %5, align 8
  %11 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @HFSPLUS_DEF_CR_TYPE, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %17 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %5, align 8
  %18 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %17, i32 0, i32 0
  %19 = bitcast i64* %18 to i8*
  %20 = call i32 @seq_show_option_n(%struct.seq_file* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %19, i32 4)
  br label %21

21:                                               ; preds = %15, %2
  %22 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %5, align 8
  %23 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @HFSPLUS_DEF_CR_TYPE, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %21
  %28 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %29 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %5, align 8
  %30 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %29, i32 0, i32 1
  %31 = bitcast i64* %30 to i8*
  %32 = call i32 @seq_show_option_n(%struct.seq_file* %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %31, i32 4)
  br label %33

33:                                               ; preds = %27, %21
  %34 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %35 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %5, align 8
  %36 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %35, i32 0, i32 8
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %5, align 8
  %40 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %39, i32 0, i32 7
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @from_kuid_munged(i32* @init_user_ns, i32 %41)
  %43 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %5, align 8
  %44 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %43, i32 0, i32 6
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @from_kgid_munged(i32* @init_user_ns, i32 %45)
  %47 = call i32 (%struct.seq_file*, i8*, i64, ...) @seq_printf(%struct.seq_file* %34, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i64 %38, i32 %42, i32 %46)
  %48 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %5, align 8
  %49 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = icmp sge i64 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %33
  %53 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %54 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %5, align 8
  %55 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = call i32 (%struct.seq_file*, i8*, i64, ...) @seq_printf(%struct.seq_file* %53, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i64 %56)
  br label %58

58:                                               ; preds = %52, %33
  %59 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %5, align 8
  %60 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = icmp sge i64 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %58
  %64 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %65 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %5, align 8
  %66 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = call i32 (%struct.seq_file*, i8*, i64, ...) @seq_printf(%struct.seq_file* %64, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i64 %67)
  br label %69

69:                                               ; preds = %63, %58
  %70 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %5, align 8
  %71 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %70, i32 0, i32 5
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = icmp ne %struct.TYPE_2__* %72, null
  br i1 %73, label %74, label %82

74:                                               ; preds = %69
  %75 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %76 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %5, align 8
  %77 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %76, i32 0, i32 5
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = call i32 (%struct.seq_file*, i8*, i64, ...) @seq_printf(%struct.seq_file* %75, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i64 %80)
  br label %82

82:                                               ; preds = %74, %69
  %83 = load i32, i32* @HFSPLUS_SB_NODECOMPOSE, align 4
  %84 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %5, align 8
  %85 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %84, i32 0, i32 4
  %86 = call i64 @test_bit(i32 %83, i32* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %82
  %89 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %90 = call i32 @seq_puts(%struct.seq_file* %89, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  br label %91

91:                                               ; preds = %88, %82
  %92 = load i32, i32* @HFSPLUS_SB_NOBARRIER, align 4
  %93 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %5, align 8
  %94 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %93, i32 0, i32 4
  %95 = call i64 @test_bit(i32 %92, i32* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %91
  %98 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %99 = call i32 @seq_puts(%struct.seq_file* %98, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  br label %100

100:                                              ; preds = %97, %91
  ret i32 0
}

declare dso_local %struct.hfsplus_sb_info* @HFSPLUS_SB(i32) #1

declare dso_local i32 @seq_show_option_n(%struct.seq_file*, i8*, i8*, i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i64, ...) #1

declare dso_local i32 @from_kuid_munged(i32*, i32) #1

declare dso_local i32 @from_kgid_munged(i32*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

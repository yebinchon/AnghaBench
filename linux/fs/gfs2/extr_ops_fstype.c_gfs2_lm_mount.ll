; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_ops_fstype.c_gfs2_lm_mount.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_ops_fstype.c_gfs2_lm_mount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lm_lockops = type { i32 (%struct.gfs2_sbd.0*, i8*)*, i32* }
%struct.gfs2_sbd.0 = type opaque
%struct.gfs2_sbd = type { i8*, i8*, i32, i32, %struct.gfs2_args, %struct.lm_lockstruct }
%struct.gfs2_args = type { i32, i8* }
%struct.lm_lockstruct = type { i32, i32, %struct.lm_lockops* }

@.str = private unnamed_addr constant [12 x i8] c"lock_nolock\00", align 1
@nolock_ops = common dso_local global %struct.lm_lockops zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"can't find protocol %s\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Trying to join cluster \22%s\22, \22%s\22\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c":\00", align 1
@MAX_OPT_ARGS = common dso_local global i32 0, align 4
@SDF_NOJOURNALID = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"unknown hostdata (%s)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"Now mounting FS...\0A\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"Joined cluster. Now mounting FS...\0A\00", align 1
@gfs2_dlm_ops = common dso_local global %struct.lm_lockops zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_sbd*, i32)* @gfs2_lm_mount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfs2_lm_mount(%struct.gfs2_sbd* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gfs2_sbd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.lm_lockops*, align 8
  %7 = alloca %struct.lm_lockstruct*, align 8
  %8 = alloca %struct.gfs2_args*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.gfs2_sbd* %0, %struct.gfs2_sbd** %4, align 8
  store i32 %1, i32* %5, align 4
  %19 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %20 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %19, i32 0, i32 5
  store %struct.lm_lockstruct* %20, %struct.lm_lockstruct** %7, align 8
  %21 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %22 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %21, i32 0, i32 4
  store %struct.gfs2_args* %22, %struct.gfs2_args** %8, align 8
  %23 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %24 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %9, align 8
  %26 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %27 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %26, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %10, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = call i32 @strcmp(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %2
  store %struct.lm_lockops* @nolock_ops, %struct.lm_lockops** %6, align 8
  %33 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %34 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %33, i32 0, i32 4
  %35 = getelementptr inbounds %struct.gfs2_args, %struct.gfs2_args* %34, i32 0, i32 0
  store i32 1, i32* %35, align 8
  br label %41

36:                                               ; preds = %2
  %37 = load i8*, i8** %9, align 8
  %38 = call i32 @pr_info(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %37)
  %39 = load i32, i32* @ENOENT, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %156

41:                                               ; preds = %32
  %42 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %43 = load i8*, i8** %9, align 8
  %44 = load i8*, i8** %10, align 8
  %45 = call i32 (%struct.gfs2_sbd*, i8*, ...) @fs_info(%struct.gfs2_sbd* %42, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i8* %43, i8* %44)
  %46 = load %struct.lm_lockops*, %struct.lm_lockops** %6, align 8
  %47 = load %struct.lm_lockstruct*, %struct.lm_lockstruct** %7, align 8
  %48 = getelementptr inbounds %struct.lm_lockstruct, %struct.lm_lockstruct* %47, i32 0, i32 2
  store %struct.lm_lockops* %46, %struct.lm_lockops** %48, align 8
  %49 = load %struct.lm_lockstruct*, %struct.lm_lockstruct** %7, align 8
  %50 = getelementptr inbounds %struct.lm_lockstruct, %struct.lm_lockstruct* %49, i32 0, i32 0
  store i32 1, i32* %50, align 8
  %51 = load %struct.gfs2_args*, %struct.gfs2_args** %8, align 8
  %52 = getelementptr inbounds %struct.gfs2_args, %struct.gfs2_args* %51, i32 0, i32 1
  %53 = load i8*, i8** %52, align 8
  store i8* %53, i8** %12, align 8
  br label %54

54:                                               ; preds = %126, %123, %41
  %55 = call i8* @strsep(i8** %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i8* %55, i8** %11, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %127

57:                                               ; preds = %54
  %58 = load i32, i32* @MAX_OPT_ARGS, align 4
  %59 = zext i32 %58 to i64
  %60 = call i8* @llvm.stacksave()
  store i8* %60, i8** %14, align 8
  %61 = alloca i32, i64 %59, align 16
  store i64 %59, i64* %15, align 8
  %62 = load i8*, i8** %11, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %68

64:                                               ; preds = %57
  %65 = load i8*, i8** %11, align 8
  %66 = load i8, i8* %65, align 1
  %67 = icmp ne i8 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %64, %57
  store i32 3, i32* %18, align 4
  br label %123

69:                                               ; preds = %64
  %70 = load i8*, i8** %11, align 8
  %71 = load %struct.lm_lockops*, %struct.lm_lockops** %6, align 8
  %72 = getelementptr inbounds %struct.lm_lockops, %struct.lm_lockops* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @match_token(i8* %70, i32 %74, i32* %61)
  store i32 %75, i32* %16, align 4
  %76 = load i32, i32* %16, align 4
  switch i32 %76, label %115 [
    i32 129, label %77
    i32 130, label %97
    i32 128, label %97
    i32 131, label %98
    i32 132, label %114
  ]

77:                                               ; preds = %69
  %78 = getelementptr inbounds i32, i32* %61, i64 0
  %79 = call i32 @match_int(i32* %78, i32* %17)
  store i32 %79, i32* %13, align 4
  %80 = load i32, i32* %13, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %77
  %83 = load i32, i32* %17, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %82, %77
  br label %116

86:                                               ; preds = %82
  %87 = load i32, i32* @SDF_NOJOURNALID, align 4
  %88 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %89 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %88, i32 0, i32 3
  %90 = call i32 @test_and_clear_bit(i32 %87, i32* %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %86
  %93 = load i32, i32* %17, align 4
  %94 = load %struct.lm_lockstruct*, %struct.lm_lockstruct** %7, align 8
  %95 = getelementptr inbounds %struct.lm_lockstruct, %struct.lm_lockstruct* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 4
  br label %96

96:                                               ; preds = %92, %86
  br label %122

97:                                               ; preds = %69, %69
  br label %122

98:                                               ; preds = %69
  %99 = getelementptr inbounds i32, i32* %61, i64 0
  %100 = call i32 @match_int(i32* %99, i32* %17)
  store i32 %100, i32* %13, align 4
  %101 = load i32, i32* %13, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %109, label %103

103:                                              ; preds = %98
  %104 = load i32, i32* %17, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %103
  %107 = load i32, i32* %17, align 4
  %108 = icmp ne i32 %107, 1
  br i1 %108, label %109, label %110

109:                                              ; preds = %106, %98
  br label %116

110:                                              ; preds = %106, %103
  %111 = load i32, i32* %17, align 4
  %112 = load %struct.lm_lockstruct*, %struct.lm_lockstruct** %7, align 8
  %113 = getelementptr inbounds %struct.lm_lockstruct, %struct.lm_lockstruct* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 8
  br label %122

114:                                              ; preds = %69
  br label %115

115:                                              ; preds = %69, %114
  br label %116

116:                                              ; preds = %115, %109, %85
  %117 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %118 = load i8*, i8** %11, align 8
  %119 = call i32 (%struct.gfs2_sbd*, i8*, ...) @fs_info(%struct.gfs2_sbd* %117, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i8* %118)
  %120 = load i32, i32* @EINVAL, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %3, align 4
  store i32 1, i32* %18, align 4
  br label %123

122:                                              ; preds = %110, %97, %96
  store i32 0, i32* %18, align 4
  br label %123

123:                                              ; preds = %122, %116, %68
  %124 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %124)
  %125 = load i32, i32* %18, align 4
  switch i32 %125, label %158 [
    i32 0, label %126
    i32 3, label %54
    i32 1, label %156
  ]

126:                                              ; preds = %123
  br label %54

127:                                              ; preds = %54
  %128 = load %struct.lm_lockops*, %struct.lm_lockops** %6, align 8
  %129 = getelementptr inbounds %struct.lm_lockops, %struct.lm_lockops* %128, i32 0, i32 0
  %130 = load i32 (%struct.gfs2_sbd.0*, i8*)*, i32 (%struct.gfs2_sbd.0*, i8*)** %129, align 8
  %131 = icmp eq i32 (%struct.gfs2_sbd.0*, i8*)* %130, null
  br i1 %131, label %132, label %138

132:                                              ; preds = %127
  %133 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %134 = call i32 (%struct.gfs2_sbd*, i8*, ...) @fs_info(%struct.gfs2_sbd* %133, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  %135 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %136 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %135, i32 0, i32 2
  %137 = call i32 @complete_all(i32* %136)
  store i32 0, i32* %3, align 4
  br label %156

138:                                              ; preds = %127
  %139 = load %struct.lm_lockops*, %struct.lm_lockops** %6, align 8
  %140 = getelementptr inbounds %struct.lm_lockops, %struct.lm_lockops* %139, i32 0, i32 0
  %141 = load i32 (%struct.gfs2_sbd.0*, i8*)*, i32 (%struct.gfs2_sbd.0*, i8*)** %140, align 8
  %142 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %143 = bitcast %struct.gfs2_sbd* %142 to %struct.gfs2_sbd.0*
  %144 = load i8*, i8** %10, align 8
  %145 = call i32 %141(%struct.gfs2_sbd.0* %143, i8* %144)
  store i32 %145, i32* %13, align 4
  %146 = load i32, i32* %13, align 4
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %138
  %149 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %150 = call i32 (%struct.gfs2_sbd*, i8*, ...) @fs_info(%struct.gfs2_sbd* %149, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  br label %151

151:                                              ; preds = %148, %138
  %152 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %153 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %152, i32 0, i32 2
  %154 = call i32 @complete_all(i32* %153)
  %155 = load i32, i32* %13, align 4
  store i32 %155, i32* %3, align 4
  br label %156

156:                                              ; preds = %151, %132, %123, %36
  %157 = load i32, i32* %3, align 4
  ret i32 %157

158:                                              ; preds = %123
  unreachable
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @pr_info(i8*, i8*) #1

declare dso_local i32 @fs_info(%struct.gfs2_sbd*, i8*, ...) #1

declare dso_local i8* @strsep(i8**, i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @match_token(i8*, i32, i32*) #1

declare dso_local i32 @match_int(i32*, i32*) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @complete_all(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

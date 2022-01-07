; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_lock_dlm.c_gdlm_mount.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_lock_dlm.c_gdlm_mount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_sbd = type { i64, i32, %struct.lm_lockstruct }
%struct.lm_lockstruct = type { i32, i32, i64, i32*, i32*, i32*, i64, i64, i64, i64, i32 }

@GFS2_LOCKNAME_LEN = common dso_local global i32 0, align 4
@gfs2_control_func = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"no fsname found\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DLM_LSFL_FS = common dso_local global i32 0, align 4
@DLM_LSFL_NEWEXCL = common dso_local global i32 0, align 4
@GDLM_LVB_SIZE = common dso_local global i32 0, align 4
@gdlm_lockspace_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"dlm_new_lockspace error %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"dlm lockspace ops not used\0A\00", align 1
@DFL_NO_DLM_OPS = common dso_local global i32 0, align 4
@SDF_NOJOURNALID = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"dlm lockspace ops disallow jid preset\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"mount control error %d\0A\00", align 1
@DFL_FIRST_MOUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_sbd*, i8*)* @gdlm_mount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gdlm_mount(%struct.gfs2_sbd* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gfs2_sbd*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.lm_lockstruct*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.gfs2_sbd* %0, %struct.gfs2_sbd** %4, align 8
  store i8* %1, i8** %5, align 8
  %14 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %15 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %14, i32 0, i32 2
  store %struct.lm_lockstruct* %15, %struct.lm_lockstruct** %6, align 8
  %16 = load i32, i32* @GFS2_LOCKNAME_LEN, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %7, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %8, align 8
  %20 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %21 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %20, i32 0, i32 1
  %22 = load i32, i32* @gfs2_control_func, align 4
  %23 = call i32 @INIT_DELAYED_WORK(i32* %21, i32 %22)
  %24 = load %struct.lm_lockstruct*, %struct.lm_lockstruct** %6, align 8
  %25 = getelementptr inbounds %struct.lm_lockstruct, %struct.lm_lockstruct* %24, i32 0, i32 10
  %26 = call i32 @spin_lock_init(i32* %25)
  %27 = load %struct.lm_lockstruct*, %struct.lm_lockstruct** %6, align 8
  %28 = getelementptr inbounds %struct.lm_lockstruct, %struct.lm_lockstruct* %27, i32 0, i32 2
  store i64 0, i64* %28, align 8
  %29 = load %struct.lm_lockstruct*, %struct.lm_lockstruct** %6, align 8
  %30 = getelementptr inbounds %struct.lm_lockstruct, %struct.lm_lockstruct* %29, i32 0, i32 9
  store i64 0, i64* %30, align 8
  %31 = load %struct.lm_lockstruct*, %struct.lm_lockstruct** %6, align 8
  %32 = getelementptr inbounds %struct.lm_lockstruct, %struct.lm_lockstruct* %31, i32 0, i32 8
  store i64 0, i64* %32, align 8
  %33 = load %struct.lm_lockstruct*, %struct.lm_lockstruct** %6, align 8
  %34 = getelementptr inbounds %struct.lm_lockstruct, %struct.lm_lockstruct* %33, i32 0, i32 7
  store i64 0, i64* %34, align 8
  %35 = load %struct.lm_lockstruct*, %struct.lm_lockstruct** %6, align 8
  %36 = getelementptr inbounds %struct.lm_lockstruct, %struct.lm_lockstruct* %35, i32 0, i32 6
  store i64 0, i64* %36, align 8
  %37 = load %struct.lm_lockstruct*, %struct.lm_lockstruct** %6, align 8
  %38 = getelementptr inbounds %struct.lm_lockstruct, %struct.lm_lockstruct* %37, i32 0, i32 5
  store i32* null, i32** %38, align 8
  %39 = load %struct.lm_lockstruct*, %struct.lm_lockstruct** %6, align 8
  %40 = getelementptr inbounds %struct.lm_lockstruct, %struct.lm_lockstruct* %39, i32 0, i32 4
  store i32* null, i32** %40, align 8
  %41 = load %struct.lm_lockstruct*, %struct.lm_lockstruct** %6, align 8
  %42 = getelementptr inbounds %struct.lm_lockstruct, %struct.lm_lockstruct* %41, i32 0, i32 3
  store i32* null, i32** %42, align 8
  %43 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %44 = call i32 @set_recover_size(%struct.gfs2_sbd* %43, i32* null, i32 0)
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %2
  br label %146

48:                                               ; preds = %2
  %49 = load i8*, i8** %5, align 8
  %50 = call i8* @strchr(i8* %49, i8 signext 58)
  store i8* %50, i8** %9, align 8
  %51 = load i8*, i8** %9, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %58, label %53

53:                                               ; preds = %48
  %54 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %55 = call i32 @fs_info(%struct.gfs2_sbd* %54, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %11, align 4
  br label %143

58:                                               ; preds = %48
  %59 = trunc i64 %17 to i32
  %60 = call i32 @memset(i8* %19, i32 0, i32 %59)
  %61 = load i8*, i8** %5, align 8
  %62 = load i8*, i8** %5, align 8
  %63 = call i64 @strlen(i8* %62)
  %64 = load i8*, i8** %9, align 8
  %65 = call i64 @strlen(i8* %64)
  %66 = sub nsw i64 %63, %65
  %67 = call i32 @memcpy(i8* %19, i8* %61, i64 %66)
  %68 = load i8*, i8** %9, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %9, align 8
  %70 = load i32, i32* @DLM_LSFL_FS, align 4
  %71 = load i32, i32* @DLM_LSFL_NEWEXCL, align 4
  %72 = or i32 %70, %71
  store i32 %72, i32* %10, align 4
  %73 = load i8*, i8** %9, align 8
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* @GDLM_LVB_SIZE, align 4
  %76 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %77 = load %struct.lm_lockstruct*, %struct.lm_lockstruct** %6, align 8
  %78 = getelementptr inbounds %struct.lm_lockstruct, %struct.lm_lockstruct* %77, i32 0, i32 1
  %79 = call i32 @dlm_new_lockspace(i8* %73, i8* %19, i32 %74, i32 %75, i32* @gdlm_lockspace_ops, %struct.gfs2_sbd* %76, i32* %12, i32* %78)
  store i32 %79, i32* %11, align 4
  %80 = load i32, i32* %11, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %58
  %83 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %84 = load i32, i32* %11, align 4
  %85 = call i32 (%struct.gfs2_sbd*, i8*, ...) @fs_err(%struct.gfs2_sbd* %83, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %84)
  br label %143

86:                                               ; preds = %58
  %87 = load i32, i32* %12, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %98

89:                                               ; preds = %86
  %90 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %91 = call i32 @fs_info(%struct.gfs2_sbd* %90, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %92 = load %struct.lm_lockstruct*, %struct.lm_lockstruct** %6, align 8
  %93 = call i32 @free_recover_size(%struct.lm_lockstruct* %92)
  %94 = load i32, i32* @DFL_NO_DLM_OPS, align 4
  %95 = load %struct.lm_lockstruct*, %struct.lm_lockstruct** %6, align 8
  %96 = getelementptr inbounds %struct.lm_lockstruct, %struct.lm_lockstruct* %95, i32 0, i32 2
  %97 = call i32 @set_bit(i32 %94, i64* %96)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %148

98:                                               ; preds = %86
  %99 = load i32, i32* @SDF_NOJOURNALID, align 4
  %100 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %101 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %100, i32 0, i32 0
  %102 = call i32 @test_bit(i32 %99, i64* %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %109, label %104

104:                                              ; preds = %98
  %105 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %106 = call i32 (%struct.gfs2_sbd*, i8*, ...) @fs_err(%struct.gfs2_sbd* %105, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  %107 = load i32, i32* @EINVAL, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %11, align 4
  br label %138

109:                                              ; preds = %98
  %110 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %111 = call i32 @control_mount(%struct.gfs2_sbd* %110)
  store i32 %111, i32* %11, align 4
  %112 = load i32, i32* %11, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %109
  %115 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %116 = load i32, i32* %11, align 4
  %117 = call i32 (%struct.gfs2_sbd*, i8*, ...) @fs_err(%struct.gfs2_sbd* %115, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %116)
  br label %138

118:                                              ; preds = %109
  %119 = load i32, i32* @DFL_FIRST_MOUNT, align 4
  %120 = load %struct.lm_lockstruct*, %struct.lm_lockstruct** %6, align 8
  %121 = getelementptr inbounds %struct.lm_lockstruct, %struct.lm_lockstruct* %120, i32 0, i32 2
  %122 = call i32 @test_bit(i32 %119, i64* %121)
  %123 = icmp ne i32 %122, 0
  %124 = xor i1 %123, true
  %125 = xor i1 %124, true
  %126 = zext i1 %125 to i32
  %127 = load %struct.lm_lockstruct*, %struct.lm_lockstruct** %6, align 8
  %128 = getelementptr inbounds %struct.lm_lockstruct, %struct.lm_lockstruct* %127, i32 0, i32 0
  store i32 %126, i32* %128, align 8
  %129 = load i32, i32* @SDF_NOJOURNALID, align 4
  %130 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %131 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %130, i32 0, i32 0
  %132 = call i32 @clear_bit(i32 %129, i64* %131)
  %133 = call i32 (...) @smp_mb__after_atomic()
  %134 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %135 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %134, i32 0, i32 0
  %136 = load i32, i32* @SDF_NOJOURNALID, align 4
  %137 = call i32 @wake_up_bit(i64* %135, i32 %136)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %148

138:                                              ; preds = %114, %104
  %139 = load %struct.lm_lockstruct*, %struct.lm_lockstruct** %6, align 8
  %140 = getelementptr inbounds %struct.lm_lockstruct, %struct.lm_lockstruct* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @dlm_release_lockspace(i32 %141, i32 2)
  br label %143

143:                                              ; preds = %138, %82, %53
  %144 = load %struct.lm_lockstruct*, %struct.lm_lockstruct** %6, align 8
  %145 = call i32 @free_recover_size(%struct.lm_lockstruct* %144)
  br label %146

146:                                              ; preds = %143, %47
  %147 = load i32, i32* %11, align 4
  store i32 %147, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %148

148:                                              ; preds = %146, %118, %89
  %149 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %149)
  %150 = load i32, i32* %3, align 4
  ret i32 %150
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #2

declare dso_local i32 @spin_lock_init(i32*) #2

declare dso_local i32 @set_recover_size(%struct.gfs2_sbd*, i32*, i32) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @fs_info(%struct.gfs2_sbd*, i8*) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @memcpy(i8*, i8*, i64) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @dlm_new_lockspace(i8*, i8*, i32, i32, i32*, %struct.gfs2_sbd*, i32*, i32*) #2

declare dso_local i32 @fs_err(%struct.gfs2_sbd*, i8*, ...) #2

declare dso_local i32 @free_recover_size(%struct.lm_lockstruct*) #2

declare dso_local i32 @set_bit(i32, i64*) #2

declare dso_local i32 @test_bit(i32, i64*) #2

declare dso_local i32 @control_mount(%struct.gfs2_sbd*) #2

declare dso_local i32 @clear_bit(i32, i64*) #2

declare dso_local i32 @smp_mb__after_atomic(...) #2

declare dso_local i32 @wake_up_bit(i64*, i32) #2

declare dso_local i32 @dlm_release_lockspace(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

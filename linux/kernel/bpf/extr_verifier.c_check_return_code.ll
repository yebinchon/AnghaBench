; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_check_return_code.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_check_return_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tnum = type { i32 }
%struct.bpf_verifier_env = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.bpf_reg_state = type { i64, %struct.tnum }

@tnum_unknown = common dso_local global %struct.tnum zeroinitializer, align 4
@BPF_CGROUP_UDP4_RECVMSG = common dso_local global i32 0, align 4
@BPF_CGROUP_UDP6_RECVMSG = common dso_local global i32 0, align 4
@BPF_CGROUP_INET_EGRESS = common dso_local global i32 0, align 4
@BPF_REG_0 = common dso_local global i32 0, align 4
@SCALAR_VALUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [59 x i8] c"At program exit the register R0 is not a known value (%s)\0A\00", align 1
@reg_type_str = common dso_local global i8** null, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"At program exit the register R0 \00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"has value %s\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"has unknown scalar value\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c" should have been in %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_verifier_env*)* @check_return_code to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_return_code(%struct.bpf_verifier_env* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bpf_verifier_env*, align 8
  %4 = alloca %struct.tnum, align 4
  %5 = alloca %struct.bpf_reg_state*, align 8
  %6 = alloca %struct.tnum, align 4
  %7 = alloca %struct.tnum, align 4
  %8 = alloca %struct.tnum, align 4
  %9 = alloca %struct.tnum, align 4
  %10 = alloca [48 x i8], align 16
  store %struct.bpf_verifier_env* %0, %struct.bpf_verifier_env** %3, align 8
  %11 = bitcast %struct.tnum* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 bitcast (%struct.tnum* @tnum_unknown to i8*), i64 4, i1 false)
  %12 = call i32 @tnum_range(i32 0, i32 1)
  %13 = getelementptr inbounds %struct.tnum, %struct.tnum* %6, i32 0, i32 0
  store i32 %12, i32* %13, align 4
  %14 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %15 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %60 [
    i32 130, label %19
    i32 133, label %41
    i32 132, label %59
    i32 128, label %59
    i32 134, label %59
    i32 129, label %59
    i32 131, label %59
  ]

19:                                               ; preds = %1
  %20 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %21 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @BPF_CGROUP_UDP4_RECVMSG, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %35, label %27

27:                                               ; preds = %19
  %28 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %29 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @BPF_CGROUP_UDP6_RECVMSG, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %27, %19
  %36 = call i32 @tnum_range(i32 1, i32 1)
  %37 = getelementptr inbounds %struct.tnum, %struct.tnum* %7, i32 0, i32 0
  store i32 %36, i32* %37, align 4
  %38 = bitcast %struct.tnum* %6 to i8*
  %39 = bitcast %struct.tnum* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %38, i8* align 4 %39, i64 4, i1 false)
  br label %40

40:                                               ; preds = %35, %27
  br label %61

41:                                               ; preds = %1
  %42 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %43 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @BPF_CGROUP_INET_EGRESS, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %58

49:                                               ; preds = %41
  %50 = call i32 @tnum_range(i32 0, i32 3)
  %51 = getelementptr inbounds %struct.tnum, %struct.tnum* %8, i32 0, i32 0
  store i32 %50, i32* %51, align 4
  %52 = bitcast %struct.tnum* %6 to i8*
  %53 = bitcast %struct.tnum* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %52, i8* align 4 %53, i64 4, i1 false)
  %54 = call i32 @tnum_range(i32 2, i32 3)
  %55 = getelementptr inbounds %struct.tnum, %struct.tnum* %9, i32 0, i32 0
  store i32 %54, i32* %55, align 4
  %56 = bitcast %struct.tnum* %4 to i8*
  %57 = bitcast %struct.tnum* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %56, i8* align 4 %57, i64 4, i1 false)
  br label %58

58:                                               ; preds = %49, %41
  br label %61

59:                                               ; preds = %1, %1, %1, %1, %1
  br label %61

60:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %144

61:                                               ; preds = %59, %58, %40
  %62 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %63 = call %struct.bpf_reg_state* @cur_regs(%struct.bpf_verifier_env* %62)
  %64 = load i32, i32* @BPF_REG_0, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %63, i64 %65
  store %struct.bpf_reg_state* %66, %struct.bpf_reg_state** %5, align 8
  %67 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %5, align 8
  %68 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @SCALAR_VALUE, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %83

72:                                               ; preds = %61
  %73 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %74 = load i8**, i8*** @reg_type_str, align 8
  %75 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %5, align 8
  %76 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds i8*, i8** %74, i64 %77
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %73, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i8* %79)
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %2, align 4
  br label %144

83:                                               ; preds = %61
  %84 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %5, align 8
  %85 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.tnum, %struct.tnum* %6, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = getelementptr inbounds %struct.tnum, %struct.tnum* %85, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i64 @tnum_in(i32 %87, i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %124, label %92

92:                                               ; preds = %83
  %93 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %94 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %93, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %95 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %5, align 8
  %96 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.tnum, %struct.tnum* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @tnum_is_unknown(i32 %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %111, label %101

101:                                              ; preds = %92
  %102 = getelementptr inbounds [48 x i8], [48 x i8]* %10, i64 0, i64 0
  %103 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %5, align 8
  %104 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.tnum, %struct.tnum* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @tnum_strn(i8* %102, i32 48, i32 %106)
  %108 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %109 = getelementptr inbounds [48 x i8], [48 x i8]* %10, i64 0, i64 0
  %110 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %108, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* %109)
  br label %114

111:                                              ; preds = %92
  %112 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %113 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %112, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %114

114:                                              ; preds = %111, %101
  %115 = getelementptr inbounds [48 x i8], [48 x i8]* %10, i64 0, i64 0
  %116 = getelementptr inbounds %struct.tnum, %struct.tnum* %6, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @tnum_strn(i8* %115, i32 48, i32 %117)
  %119 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %120 = getelementptr inbounds [48 x i8], [48 x i8]* %10, i64 0, i64 0
  %121 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %119, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i8* %120)
  %122 = load i32, i32* @EINVAL, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %2, align 4
  br label %144

124:                                              ; preds = %83
  %125 = getelementptr inbounds %struct.tnum, %struct.tnum* %4, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @tnum_is_unknown(i32 %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %143, label %129

129:                                              ; preds = %124
  %130 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %5, align 8
  %131 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.tnum, %struct.tnum* %4, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = getelementptr inbounds %struct.tnum, %struct.tnum* %131, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = call i64 @tnum_in(i32 %133, i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %129
  %139 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %140 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %139, i32 0, i32 0
  %141 = load %struct.TYPE_2__*, %struct.TYPE_2__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 1
  store i32 1, i32* %142, align 4
  br label %143

143:                                              ; preds = %138, %129, %124
  store i32 0, i32* %2, align 4
  br label %144

144:                                              ; preds = %143, %114, %72, %60
  %145 = load i32, i32* %2, align 4
  ret i32 %145
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @tnum_range(i32, i32) #2

declare dso_local %struct.bpf_reg_state* @cur_regs(%struct.bpf_verifier_env*) #2

declare dso_local i32 @verbose(%struct.bpf_verifier_env*, i8*, ...) #2

declare dso_local i64 @tnum_in(i32, i32) #2

declare dso_local i32 @tnum_is_unknown(i32) #2

declare dso_local i32 @tnum_strn(i8*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

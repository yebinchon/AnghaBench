; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_btf.c_btf_modifier_check_member.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_btf.c_btf_modifier_check_member.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btf_verifier_env = type { %struct.btf* }
%struct.btf = type { i32 }
%struct.btf_member = type { i32 }
%struct.btf_type = type { i32 }
%struct.TYPE_2__ = type { i32 (%struct.btf_verifier_env*, %struct.btf_type*, %struct.btf_member*, %struct.btf_type*)* }

@.str = private unnamed_addr constant [15 x i8] c"Invalid member\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btf_verifier_env*, %struct.btf_type*, %struct.btf_member*, %struct.btf_type*)* @btf_modifier_check_member to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btf_modifier_check_member(%struct.btf_verifier_env* %0, %struct.btf_type* %1, %struct.btf_member* %2, %struct.btf_type* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.btf_verifier_env*, align 8
  %7 = alloca %struct.btf_type*, align 8
  %8 = alloca %struct.btf_member*, align 8
  %9 = alloca %struct.btf_type*, align 8
  %10 = alloca %struct.btf_type*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.btf_member, align 4
  %13 = alloca %struct.btf*, align 8
  store %struct.btf_verifier_env* %0, %struct.btf_verifier_env** %6, align 8
  store %struct.btf_type* %1, %struct.btf_type** %7, align 8
  store %struct.btf_member* %2, %struct.btf_member** %8, align 8
  store %struct.btf_type* %3, %struct.btf_type** %9, align 8
  %14 = load %struct.btf_member*, %struct.btf_member** %8, align 8
  %15 = getelementptr inbounds %struct.btf_member, %struct.btf_member* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %11, align 4
  %17 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %6, align 8
  %18 = getelementptr inbounds %struct.btf_verifier_env, %struct.btf_verifier_env* %17, i32 0, i32 0
  %19 = load %struct.btf*, %struct.btf** %18, align 8
  store %struct.btf* %19, %struct.btf** %13, align 8
  %20 = load %struct.btf*, %struct.btf** %13, align 8
  %21 = call %struct.btf_type* @btf_type_id_size(%struct.btf* %20, i32* %11, i32* null)
  store %struct.btf_type* %21, %struct.btf_type** %10, align 8
  %22 = load %struct.btf_type*, %struct.btf_type** %10, align 8
  %23 = icmp ne %struct.btf_type* %22, null
  br i1 %23, label %31, label %24

24:                                               ; preds = %4
  %25 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %6, align 8
  %26 = load %struct.btf_type*, %struct.btf_type** %7, align 8
  %27 = load %struct.btf_member*, %struct.btf_member** %8, align 8
  %28 = call i32 @btf_verifier_log_member(%struct.btf_verifier_env* %25, %struct.btf_type* %26, %struct.btf_member* %27, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %45

31:                                               ; preds = %4
  %32 = load %struct.btf_member*, %struct.btf_member** %8, align 8
  %33 = bitcast %struct.btf_member* %12 to i8*
  %34 = bitcast %struct.btf_member* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %33, i8* align 4 %34, i64 4, i1 false)
  %35 = load i32, i32* %11, align 4
  %36 = getelementptr inbounds %struct.btf_member, %struct.btf_member* %12, i32 0, i32 0
  store i32 %35, i32* %36, align 4
  %37 = load %struct.btf_type*, %struct.btf_type** %10, align 8
  %38 = call %struct.TYPE_2__* @btf_type_ops(%struct.btf_type* %37)
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32 (%struct.btf_verifier_env*, %struct.btf_type*, %struct.btf_member*, %struct.btf_type*)*, i32 (%struct.btf_verifier_env*, %struct.btf_type*, %struct.btf_member*, %struct.btf_type*)** %39, align 8
  %41 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %6, align 8
  %42 = load %struct.btf_type*, %struct.btf_type** %7, align 8
  %43 = load %struct.btf_type*, %struct.btf_type** %10, align 8
  %44 = call i32 %40(%struct.btf_verifier_env* %41, %struct.btf_type* %42, %struct.btf_member* %12, %struct.btf_type* %43)
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %31, %24
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local %struct.btf_type* @btf_type_id_size(%struct.btf*, i32*, i32*) #1

declare dso_local i32 @btf_verifier_log_member(%struct.btf_verifier_env*, %struct.btf_type*, %struct.btf_member*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.TYPE_2__* @btf_type_ops(%struct.btf_type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

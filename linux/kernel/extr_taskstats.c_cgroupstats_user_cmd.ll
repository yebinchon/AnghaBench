; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_taskstats.c_cgroupstats_user_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_taskstats.c_cgroupstats_user_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { %struct.nlattr** }
%struct.nlattr = type { i32 }
%struct.cgroupstats = type { i32 }
%struct.fd = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@CGROUPSTATS_CMD_ATTR_FD = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@CGROUPSTATS_CMD_NEW = common dso_local global i32 0, align 4
@CGROUPSTATS_TYPE_CGROUP_STATS = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @cgroupstats_user_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cgroupstats_user_cmd(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.cgroupstats*, align 8
  %9 = alloca %struct.nlattr*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.fd, align 8
  %13 = alloca %struct.fd, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  store i32 0, i32* %6, align 4
  %14 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %15 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %14, i32 0, i32 0
  %16 = load %struct.nlattr**, %struct.nlattr*** %15, align 8
  %17 = load i64, i64* @CGROUPSTATS_CMD_ATTR_FD, align 8
  %18 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %16, i64 %17
  %19 = load %struct.nlattr*, %struct.nlattr** %18, align 8
  store %struct.nlattr* %19, %struct.nlattr** %9, align 8
  %20 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %21 = icmp ne %struct.nlattr* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %88

25:                                               ; preds = %2
  %26 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %27 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %26, i32 0, i32 0
  %28 = load %struct.nlattr**, %struct.nlattr*** %27, align 8
  %29 = load i64, i64* @CGROUPSTATS_CMD_ATTR_FD, align 8
  %30 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %28, i64 %29
  %31 = load %struct.nlattr*, %struct.nlattr** %30, align 8
  %32 = call i32 @nla_get_u32(%struct.nlattr* %31)
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = call %struct.TYPE_4__* @fdget(i32 %33)
  %35 = getelementptr inbounds %struct.fd, %struct.fd* %13, i32 0, i32 0
  store %struct.TYPE_4__* %34, %struct.TYPE_4__** %35, align 8
  %36 = bitcast %struct.fd* %12 to i8*
  %37 = bitcast %struct.fd* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %36, i8* align 8 %37, i64 8, i1 false)
  %38 = getelementptr inbounds %struct.fd, %struct.fd* %12, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = icmp ne %struct.TYPE_4__* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %88

42:                                               ; preds = %25
  %43 = call i64 @nla_total_size(i32 4)
  store i64 %43, i64* %10, align 8
  %44 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %45 = load i32, i32* @CGROUPSTATS_CMD_NEW, align 4
  %46 = load i64, i64* %10, align 8
  %47 = call i32 @prepare_reply(%struct.genl_info* %44, i32 %45, %struct.sk_buff** %7, i64 %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  br label %83

51:                                               ; preds = %42
  %52 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %53 = load i32, i32* @CGROUPSTATS_TYPE_CGROUP_STATS, align 4
  %54 = call %struct.nlattr* @nla_reserve(%struct.sk_buff* %52, i32 %53, i32 4)
  store %struct.nlattr* %54, %struct.nlattr** %9, align 8
  %55 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %56 = icmp eq %struct.nlattr* %55, null
  br i1 %56, label %57, label %62

57:                                               ; preds = %51
  %58 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %59 = call i32 @nlmsg_free(%struct.sk_buff* %58)
  %60 = load i32, i32* @EMSGSIZE, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %6, align 4
  br label %83

62:                                               ; preds = %51
  %63 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %64 = call %struct.cgroupstats* @nla_data(%struct.nlattr* %63)
  store %struct.cgroupstats* %64, %struct.cgroupstats** %8, align 8
  %65 = load %struct.cgroupstats*, %struct.cgroupstats** %8, align 8
  %66 = call i32 @memset(%struct.cgroupstats* %65, i32 0, i32 4)
  %67 = load %struct.cgroupstats*, %struct.cgroupstats** %8, align 8
  %68 = getelementptr inbounds %struct.fd, %struct.fd* %12, i32 0, i32 0
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @cgroupstats_build(%struct.cgroupstats* %67, i32 %72)
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %62
  %77 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %78 = call i32 @nlmsg_free(%struct.sk_buff* %77)
  br label %83

79:                                               ; preds = %62
  %80 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %81 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %82 = call i32 @send_reply(%struct.sk_buff* %80, %struct.genl_info* %81)
  store i32 %82, i32* %6, align 4
  br label %83

83:                                               ; preds = %79, %76, %57, %50
  %84 = getelementptr inbounds %struct.fd, %struct.fd* %12, i32 0, i32 0
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = call i32 @fdput(%struct.TYPE_4__* %85)
  %87 = load i32, i32* %6, align 4
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %83, %41, %22
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #1

declare dso_local %struct.TYPE_4__* @fdget(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @nla_total_size(i32) #1

declare dso_local i32 @prepare_reply(%struct.genl_info*, i32, %struct.sk_buff**, i64) #1

declare dso_local %struct.nlattr* @nla_reserve(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

declare dso_local %struct.cgroupstats* @nla_data(%struct.nlattr*) #1

declare dso_local i32 @memset(%struct.cgroupstats*, i32, i32) #1

declare dso_local i32 @cgroupstats_build(%struct.cgroupstats*, i32) #1

declare dso_local i32 @send_reply(%struct.sk_buff*, %struct.genl_info*) #1

declare dso_local i32 @fdput(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

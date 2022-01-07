; ModuleID = '/home/carl/AnghaBench/linux/fs/lockd/extr_host.c_nlm_bind_host.c'
source_filename = "/home/carl/AnghaBench/linux/fs/lockd/extr_host.c_nlm_bind_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_clnt = type { i32 }
%struct.nlm_host = type { i32, i32, %struct.rpc_clnt*, i64, i64, i32, i32, i32, i32, i32, i32, i64, i32 }
%struct.rpc_timeout = type { i64, i64, i64, i32 }
%struct.rpc_create_args = type { i32, i32, i32, i32, i32, i32*, i32, %struct.rpc_timeout*, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"lockd: nlm_bind_host %s (%s)\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@NLM_HOST_REBIND = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"lockd: next rebind in %lu jiffies\0A\00", align 1
@nlmsvc_timeout = common dso_local global i64 0, align 8
@RPC_CLNT_CREATE_NOPING = common dso_local global i32 0, align 4
@RPC_CLNT_CREATE_AUTOBIND = common dso_local global i32 0, align 4
@RPC_AUTH_UNIX = common dso_local global i32 0, align 4
@nlm_program = common dso_local global i32 0, align 4
@RPC_CLNT_CREATE_HARDRTRY = common dso_local global i32 0, align 4
@RPC_CLNT_CREATE_NONPRIVPORT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"lockd: couldn't create RPC handle for %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rpc_clnt* @nlm_bind_host(%struct.nlm_host* %0) #0 {
  %2 = alloca %struct.nlm_host*, align 8
  %3 = alloca %struct.rpc_clnt*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.rpc_timeout, align 8
  %6 = alloca %struct.rpc_create_args, align 8
  store %struct.nlm_host* %0, %struct.nlm_host** %2, align 8
  %7 = load %struct.nlm_host*, %struct.nlm_host** %2, align 8
  %8 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = sext i32 %9 to i64
  %11 = load %struct.nlm_host*, %struct.nlm_host** %2, align 8
  %12 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %11, i32 0, i32 12
  %13 = load i32, i32* %12, align 8
  %14 = call i32 (i8*, i64, ...) @dprintk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %10, i32 %13)
  %15 = load %struct.nlm_host*, %struct.nlm_host** %2, align 8
  %16 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %15, i32 0, i32 0
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.nlm_host*, %struct.nlm_host** %2, align 8
  %19 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %18, i32 0, i32 2
  %20 = load %struct.rpc_clnt*, %struct.rpc_clnt** %19, align 8
  store %struct.rpc_clnt* %20, %struct.rpc_clnt** %3, align 8
  %21 = icmp ne %struct.rpc_clnt* %20, null
  br i1 %21, label %22, label %44

22:                                               ; preds = %1
  %23 = load i64, i64* @jiffies, align 8
  %24 = load %struct.nlm_host*, %struct.nlm_host** %2, align 8
  %25 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %24, i32 0, i32 11
  %26 = load i64, i64* %25, align 8
  %27 = call i64 @time_after_eq(i64 %23, i64 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %43

29:                                               ; preds = %22
  %30 = load %struct.rpc_clnt*, %struct.rpc_clnt** %3, align 8
  %31 = call i32 @rpc_force_rebind(%struct.rpc_clnt* %30)
  %32 = load i64, i64* @jiffies, align 8
  %33 = load i64, i64* @NLM_HOST_REBIND, align 8
  %34 = add nsw i64 %32, %33
  %35 = load %struct.nlm_host*, %struct.nlm_host** %2, align 8
  %36 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %35, i32 0, i32 11
  store i64 %34, i64* %36, align 8
  %37 = load %struct.nlm_host*, %struct.nlm_host** %2, align 8
  %38 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %37, i32 0, i32 11
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @jiffies, align 8
  %41 = sub nsw i64 %39, %40
  %42 = call i32 (i8*, i64, ...) @dprintk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 %41)
  br label %43

43:                                               ; preds = %29, %22
  br label %133

44:                                               ; preds = %1
  %45 = load i64, i64* @nlmsvc_timeout, align 8
  store i64 %45, i64* %4, align 8
  %46 = getelementptr inbounds %struct.rpc_timeout, %struct.rpc_timeout* %5, i32 0, i32 0
  %47 = load i64, i64* %4, align 8
  store i64 %47, i64* %46, align 8
  %48 = getelementptr inbounds %struct.rpc_timeout, %struct.rpc_timeout* %5, i32 0, i32 1
  %49 = load i64, i64* %4, align 8
  store i64 %49, i64* %48, align 8
  %50 = getelementptr inbounds %struct.rpc_timeout, %struct.rpc_timeout* %5, i32 0, i32 2
  %51 = load i64, i64* %4, align 8
  %52 = mul i64 %51, 6
  store i64 %52, i64* %50, align 8
  %53 = getelementptr inbounds %struct.rpc_timeout, %struct.rpc_timeout* %5, i32 0, i32 3
  store i32 5, i32* %53, align 8
  %54 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %6, i32 0, i32 0
  %55 = load i32, i32* @RPC_CLNT_CREATE_NOPING, align 4
  %56 = load i32, i32* @RPC_CLNT_CREATE_AUTOBIND, align 4
  %57 = or i32 %55, %56
  store i32 %57, i32* %54, align 8
  %58 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %6, i32 0, i32 1
  store i32 0, i32* %58, align 4
  %59 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %6, i32 0, i32 2
  %60 = load %struct.nlm_host*, %struct.nlm_host** %2, align 8
  %61 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %60, i32 0, i32 6
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %59, align 8
  %63 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %6, i32 0, i32 3
  %64 = load i32, i32* @RPC_AUTH_UNIX, align 4
  store i32 %64, i32* %63, align 4
  %65 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %6, i32 0, i32 4
  %66 = load %struct.nlm_host*, %struct.nlm_host** %2, align 8
  %67 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %66, i32 0, i32 7
  %68 = load i32, i32* %67, align 8
  store i32 %68, i32* %65, align 8
  %69 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %6, i32 0, i32 5
  store i32* @nlm_program, i32** %69, align 8
  %70 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %6, i32 0, i32 6
  %71 = load %struct.nlm_host*, %struct.nlm_host** %2, align 8
  %72 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %70, align 8
  %74 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %6, i32 0, i32 7
  store %struct.rpc_timeout* %5, %struct.rpc_timeout** %74, align 8
  %75 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %6, i32 0, i32 8
  %76 = load %struct.nlm_host*, %struct.nlm_host** %2, align 8
  %77 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %76, i32 0, i32 8
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %75, align 8
  %79 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %6, i32 0, i32 9
  %80 = load %struct.nlm_host*, %struct.nlm_host** %2, align 8
  %81 = call i32 @nlm_addr(%struct.nlm_host* %80)
  store i32 %81, i32* %79, align 4
  %82 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %6, i32 0, i32 10
  %83 = load %struct.nlm_host*, %struct.nlm_host** %2, align 8
  %84 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %83, i32 0, i32 9
  %85 = load i32, i32* %84, align 8
  store i32 %85, i32* %82, align 8
  %86 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %6, i32 0, i32 11
  %87 = load %struct.nlm_host*, %struct.nlm_host** %2, align 8
  %88 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %87, i32 0, i32 10
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %86, align 4
  %90 = load %struct.nlm_host*, %struct.nlm_host** %2, align 8
  %91 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 8
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %99, label %94

94:                                               ; preds = %44
  %95 = load i32, i32* @RPC_CLNT_CREATE_HARDRTRY, align 4
  %96 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %6, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = or i32 %97, %95
  store i32 %98, i32* %96, align 8
  br label %99

99:                                               ; preds = %94, %44
  %100 = load %struct.nlm_host*, %struct.nlm_host** %2, align 8
  %101 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %100, i32 0, i32 4
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %99
  %105 = load i32, i32* @RPC_CLNT_CREATE_NONPRIVPORT, align 4
  %106 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %6, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = or i32 %107, %105
  store i32 %108, i32* %106, align 8
  br label %109

109:                                              ; preds = %104, %99
  %110 = load %struct.nlm_host*, %struct.nlm_host** %2, align 8
  %111 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %110, i32 0, i32 3
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %109
  %115 = load %struct.nlm_host*, %struct.nlm_host** %2, align 8
  %116 = call i32 @nlm_srcaddr(%struct.nlm_host* %115)
  %117 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %6, i32 0, i32 1
  store i32 %116, i32* %117, align 4
  br label %118

118:                                              ; preds = %114, %109
  %119 = call %struct.rpc_clnt* @rpc_create(%struct.rpc_create_args* %6)
  store %struct.rpc_clnt* %119, %struct.rpc_clnt** %3, align 8
  %120 = load %struct.rpc_clnt*, %struct.rpc_clnt** %3, align 8
  %121 = call i32 @IS_ERR(%struct.rpc_clnt* %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %127, label %123

123:                                              ; preds = %118
  %124 = load %struct.rpc_clnt*, %struct.rpc_clnt** %3, align 8
  %125 = load %struct.nlm_host*, %struct.nlm_host** %2, align 8
  %126 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %125, i32 0, i32 2
  store %struct.rpc_clnt* %124, %struct.rpc_clnt** %126, align 8
  br label %132

127:                                              ; preds = %118
  %128 = load %struct.nlm_host*, %struct.nlm_host** %2, align 8
  %129 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @printk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %130)
  store %struct.rpc_clnt* null, %struct.rpc_clnt** %3, align 8
  br label %132

132:                                              ; preds = %127, %123
  br label %133

133:                                              ; preds = %132, %43
  %134 = load %struct.nlm_host*, %struct.nlm_host** %2, align 8
  %135 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %134, i32 0, i32 0
  %136 = call i32 @mutex_unlock(i32* %135)
  %137 = load %struct.rpc_clnt*, %struct.rpc_clnt** %3, align 8
  ret %struct.rpc_clnt* %137
}

declare dso_local i32 @dprintk(i8*, i64, ...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @time_after_eq(i64, i64) #1

declare dso_local i32 @rpc_force_rebind(%struct.rpc_clnt*) #1

declare dso_local i32 @nlm_addr(%struct.nlm_host*) #1

declare dso_local i32 @nlm_srcaddr(%struct.nlm_host*) #1

declare dso_local %struct.rpc_clnt* @rpc_create(%struct.rpc_create_args*) #1

declare dso_local i32 @IS_ERR(%struct.rpc_clnt*) #1

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_ipcomp.c_ipcomp_compress.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_ipcomp.c_ipcomp_compress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { %struct.ipcomp_data* }
%struct.ipcomp_data = type { i32 }
%struct.sk_buff = type { i32, i32* }
%struct.crypto_comp = type { i32 }

@IPCOMP_SCRATCH_SIZE = common dso_local global i32 0, align 4
@ipcomp_scratches = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfrm_state*, %struct.sk_buff*)* @ipcomp_compress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipcomp_compress(%struct.xfrm_state* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xfrm_state*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.ipcomp_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.crypto_comp*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.xfrm_state* %0, %struct.xfrm_state** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %13 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %14 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %13, i32 0, i32 0
  %15 = load %struct.ipcomp_data*, %struct.ipcomp_data** %14, align 8
  store %struct.ipcomp_data* %15, %struct.ipcomp_data** %6, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* @IPCOMP_SCRATCH_SIZE, align 4
  store i32 %19, i32* %8, align 4
  %20 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %9, align 8
  %23 = call i32 (...) @local_bh_disable()
  %24 = load i32, i32* @ipcomp_scratches, align 4
  %25 = call i8** @this_cpu_ptr(i32 %24)
  %26 = load i8*, i8** %25, align 8
  %27 = bitcast i8* %26 to i32*
  store i32* %27, i32** %11, align 8
  %28 = load %struct.ipcomp_data*, %struct.ipcomp_data** %6, align 8
  %29 = getelementptr inbounds %struct.ipcomp_data, %struct.ipcomp_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i8** @this_cpu_ptr(i32 %30)
  %32 = load i8*, i8** %31, align 8
  %33 = bitcast i8* %32 to %struct.crypto_comp*
  store %struct.crypto_comp* %33, %struct.crypto_comp** %10, align 8
  %34 = load %struct.crypto_comp*, %struct.crypto_comp** %10, align 8
  %35 = load i32*, i32** %9, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load i32*, i32** %11, align 8
  %38 = call i32 @crypto_comp_compress(%struct.crypto_comp* %34, i32* %35, i32 %36, i32* %37, i32* %8)
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %2
  br label %65

42:                                               ; preds = %2
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = add i64 %44, 4
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = icmp uge i64 %45, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %42
  %50 = load i32, i32* @EMSGSIZE, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %12, align 4
  br label %65

52:                                               ; preds = %42
  %53 = load i32*, i32** %9, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 4
  %55 = load i32*, i32** %11, align 8
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @memcpy(i32* %54, i32* %55, i32 %56)
  %58 = call i32 (...) @local_bh_enable()
  %59 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = add i64 %61, 4
  %63 = trunc i64 %62 to i32
  %64 = call i32 @pskb_trim(%struct.sk_buff* %59, i32 %63)
  store i32 0, i32* %3, align 4
  br label %68

65:                                               ; preds = %49, %41
  %66 = call i32 (...) @local_bh_enable()
  %67 = load i32, i32* %12, align 4
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %65, %52
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @local_bh_disable(...) #1

declare dso_local i8** @this_cpu_ptr(i32) #1

declare dso_local i32 @crypto_comp_compress(%struct.crypto_comp*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @local_bh_enable(...) #1

declare dso_local i32 @pskb_trim(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

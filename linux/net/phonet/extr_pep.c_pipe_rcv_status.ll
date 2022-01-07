; ModuleID = '/home/carl/AnghaBench/linux/net/phonet/extr_pep.c_pipe_rcv_status.c'
source_filename = "/home/carl/AnghaBench/linux/net/phonet/extr_pep.c_pipe_rcv_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 (%struct.sock*)* }
%struct.sk_buff = type { i32 }
%struct.pep_sock = type { i32, i32 }
%struct.pnpipehdr = type { i64, i32* }

@EINVAL = common dso_local global i32 0, align 4
@PN_PEP_TYPE_COMMON = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"Phonet unknown PEP type: %u\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@PN_MULTI_CREDIT_FLOW_CONTROL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Phonet unknown PEP indication: %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*)* @pipe_rcv_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pipe_rcv_status(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.pep_sock*, align 8
  %7 = alloca %struct.pnpipehdr*, align 8
  %8 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %9 = load %struct.sock*, %struct.sock** %4, align 8
  %10 = call %struct.pep_sock* @pep_sk(%struct.sock* %9)
  store %struct.pep_sock* %10, %struct.pep_sock** %6, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %12 = call i32 @pskb_may_pull(%struct.sk_buff* %11, i32 20)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %106

17:                                               ; preds = %2
  %18 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %19 = call %struct.pnpipehdr* @pnp_hdr(%struct.sk_buff* %18)
  store %struct.pnpipehdr* %19, %struct.pnpipehdr** %7, align 8
  %20 = load %struct.pnpipehdr*, %struct.pnpipehdr** %7, align 8
  %21 = getelementptr inbounds %struct.pnpipehdr, %struct.pnpipehdr* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @PN_PEP_TYPE_COMMON, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %17
  %26 = load %struct.pnpipehdr*, %struct.pnpipehdr** %7, align 8
  %27 = getelementptr inbounds %struct.pnpipehdr, %struct.pnpipehdr* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = trunc i64 %28 to i32
  %30 = call i32 @net_dbg_ratelimited(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* @EOPNOTSUPP, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %106

33:                                               ; preds = %17
  %34 = load %struct.pnpipehdr*, %struct.pnpipehdr** %7, align 8
  %35 = getelementptr inbounds %struct.pnpipehdr, %struct.pnpipehdr* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  switch i32 %38, label %87 [
    i32 129, label %39
    i32 128, label %71
  ]

39:                                               ; preds = %33
  %40 = load %struct.pep_sock*, %struct.pep_sock** %6, align 8
  %41 = getelementptr inbounds %struct.pep_sock, %struct.pep_sock* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  switch i32 %42, label %70 [
    i32 131, label %43
    i32 130, label %58
  ]

43:                                               ; preds = %39
  %44 = load %struct.pnpipehdr*, %struct.pnpipehdr** %7, align 8
  %45 = getelementptr inbounds %struct.pnpipehdr, %struct.pnpipehdr* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 3
  %48 = load i32, i32* %47, align 4
  switch i32 %48, label %57 [
    i32 133, label %49
    i32 132, label %53
  ]

49:                                               ; preds = %43
  %50 = load %struct.pep_sock*, %struct.pep_sock** %6, align 8
  %51 = getelementptr inbounds %struct.pep_sock, %struct.pep_sock* %50, i32 0, i32 0
  %52 = call i32 @atomic_set(i32* %51, i32 0)
  br label %57

53:                                               ; preds = %43
  %54 = load %struct.pep_sock*, %struct.pep_sock** %6, align 8
  %55 = getelementptr inbounds %struct.pep_sock, %struct.pep_sock* %54, i32 0, i32 0
  store i32 1, i32* %8, align 4
  %56 = call i32 @atomic_set(i32* %55, i32 1)
  br label %57

57:                                               ; preds = %43, %53, %49
  br label %70

58:                                               ; preds = %39
  %59 = load %struct.pnpipehdr*, %struct.pnpipehdr** %7, align 8
  %60 = getelementptr inbounds %struct.pnpipehdr, %struct.pnpipehdr* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 3
  %63 = load i32, i32* %62, align 4
  %64 = icmp eq i32 %63, 132
  br i1 %64, label %65, label %69

65:                                               ; preds = %58
  %66 = load %struct.pep_sock*, %struct.pep_sock** %6, align 8
  %67 = getelementptr inbounds %struct.pep_sock, %struct.pep_sock* %66, i32 0, i32 0
  store i32 1, i32* %8, align 4
  %68 = call i32 @atomic_set(i32* %67, i32 1)
  br label %69

69:                                               ; preds = %65, %58
  br label %70

70:                                               ; preds = %39, %69, %57
  br label %96

71:                                               ; preds = %33
  %72 = load %struct.pep_sock*, %struct.pep_sock** %6, align 8
  %73 = getelementptr inbounds %struct.pep_sock, %struct.pep_sock* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @PN_MULTI_CREDIT_FLOW_CONTROL, align 4
  %76 = icmp ne i32 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %71
  br label %96

78:                                               ; preds = %71
  %79 = load %struct.pnpipehdr*, %struct.pnpipehdr** %7, align 8
  %80 = getelementptr inbounds %struct.pnpipehdr, %struct.pnpipehdr* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 3
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %8, align 4
  %84 = load %struct.pep_sock*, %struct.pep_sock** %6, align 8
  %85 = getelementptr inbounds %struct.pep_sock, %struct.pep_sock* %84, i32 0, i32 0
  %86 = call i32 @atomic_add(i32 %83, i32* %85)
  br label %96

87:                                               ; preds = %33
  %88 = load %struct.pnpipehdr*, %struct.pnpipehdr** %7, align 8
  %89 = getelementptr inbounds %struct.pnpipehdr, %struct.pnpipehdr* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @net_dbg_ratelimited(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %92)
  %94 = load i32, i32* @EOPNOTSUPP, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %3, align 4
  br label %106

96:                                               ; preds = %78, %77, %70
  %97 = load i32, i32* %8, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %96
  %100 = load %struct.sock*, %struct.sock** %4, align 8
  %101 = getelementptr inbounds %struct.sock, %struct.sock* %100, i32 0, i32 0
  %102 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %101, align 8
  %103 = load %struct.sock*, %struct.sock** %4, align 8
  %104 = call i32 %102(%struct.sock* %103)
  br label %105

105:                                              ; preds = %99, %96
  store i32 0, i32* %3, align 4
  br label %106

106:                                              ; preds = %105, %87, %25, %14
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local %struct.pep_sock* @pep_sk(%struct.sock*) #1

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local %struct.pnpipehdr* @pnp_hdr(%struct.sk_buff*) #1

declare dso_local i32 @net_dbg_ratelimited(i8*, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @atomic_add(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

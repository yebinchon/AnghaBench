; ModuleID = '/home/carl/AnghaBench/linux/net/phonet/extr_pep.c_pep_connresp_rcv.c'
source_filename = "/home/carl/AnghaBench/linux/net/phonet/extr_pep.c_pep_connresp_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.pep_sock = type { i8*, i8* }
%struct.pnpipehdr = type { i64, i64* }

@EINVAL = common dso_local global i32 0, align 4
@PN_PIPE_NO_ERROR = common dso_local global i64 0, align 8
@ECONNREFUSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*)* @pep_connresp_rcv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pep_connresp_rcv(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.pep_sock*, align 8
  %7 = alloca %struct.pnpipehdr*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca [6 x i64], align 16
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %13 = load %struct.sock*, %struct.sock** %4, align 8
  %14 = call %struct.pep_sock* @pep_sk(%struct.sock* %13)
  store %struct.pep_sock* %14, %struct.pep_sock** %6, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %16 = call i32 @pskb_pull(%struct.sk_buff* %15, i32 20)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %96

21:                                               ; preds = %2
  %22 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %23 = call %struct.pnpipehdr* @pnp_hdr(%struct.sk_buff* %22)
  store %struct.pnpipehdr* %23, %struct.pnpipehdr** %7, align 8
  %24 = load %struct.pnpipehdr*, %struct.pnpipehdr** %7, align 8
  %25 = getelementptr inbounds %struct.pnpipehdr, %struct.pnpipehdr* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @PN_PIPE_NO_ERROR, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %21
  %30 = load i32, i32* @ECONNREFUSED, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %96

32:                                               ; preds = %21
  %33 = load %struct.pnpipehdr*, %struct.pnpipehdr** %7, align 8
  %34 = getelementptr inbounds %struct.pnpipehdr, %struct.pnpipehdr* %33, i32 0, i32 1
  %35 = load i64*, i64** %34, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 3
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %8, align 8
  br label %38

38:                                               ; preds = %90, %32
  %39 = load i64, i64* %8, align 8
  %40 = icmp sgt i64 %39, 0
  br i1 %40, label %41, label %93

41:                                               ; preds = %38
  store i64 48, i64* %11, align 8
  %42 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %43 = getelementptr inbounds [6 x i64], [6 x i64]* %10, i64 0, i64 0
  %44 = call i64* @pep_get_sb(%struct.sk_buff* %42, i64* %9, i64* %11, i64* %43)
  store i64* %44, i64** %12, align 8
  %45 = load i64*, i64** %12, align 8
  %46 = icmp eq i64* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %96

50:                                               ; preds = %41
  %51 = load i64, i64* %9, align 8
  switch i64 %51, label %90 [
    i64 128, label %52
    i64 129, label %71
  ]

52:                                               ; preds = %50
  %53 = load i64, i64* %11, align 8
  %54 = icmp slt i64 %53, 2
  br i1 %54, label %61, label %55

55:                                               ; preds = %52
  %56 = load i64, i64* %11, align 8
  %57 = load i64*, i64** %12, align 8
  %58 = getelementptr inbounds i64, i64* %57, i64 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp slt i64 %56, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %55, %52
  br label %90

62:                                               ; preds = %55
  %63 = load i64*, i64** %12, align 8
  %64 = getelementptr inbounds i64, i64* %63, i64 2
  %65 = load i64, i64* %11, align 8
  %66 = sub nsw i64 %65, 2
  %67 = trunc i64 %66 to i32
  %68 = call i8* @pipe_negotiate_fc(i64* %64, i32 %67)
  %69 = load %struct.pep_sock*, %struct.pep_sock** %6, align 8
  %70 = getelementptr inbounds %struct.pep_sock, %struct.pep_sock* %69, i32 0, i32 1
  store i8* %68, i8** %70, align 8
  br label %90

71:                                               ; preds = %50
  %72 = load i64, i64* %11, align 8
  %73 = icmp slt i64 %72, 2
  br i1 %73, label %80, label %74

74:                                               ; preds = %71
  %75 = load i64, i64* %11, align 8
  %76 = load i64*, i64** %12, align 8
  %77 = getelementptr inbounds i64, i64* %76, i64 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp slt i64 %75, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %74, %71
  br label %90

81:                                               ; preds = %74
  %82 = load i64*, i64** %12, align 8
  %83 = getelementptr inbounds i64, i64* %82, i64 2
  %84 = load i64, i64* %11, align 8
  %85 = sub nsw i64 %84, 2
  %86 = trunc i64 %85 to i32
  %87 = call i8* @pipe_negotiate_fc(i64* %83, i32 %86)
  %88 = load %struct.pep_sock*, %struct.pep_sock** %6, align 8
  %89 = getelementptr inbounds %struct.pep_sock, %struct.pep_sock* %88, i32 0, i32 0
  store i8* %87, i8** %89, align 8
  br label %90

90:                                               ; preds = %50, %81, %80, %62, %61
  %91 = load i64, i64* %8, align 8
  %92 = add nsw i64 %91, -1
  store i64 %92, i64* %8, align 8
  br label %38

93:                                               ; preds = %38
  %94 = load %struct.sock*, %struct.sock** %4, align 8
  %95 = call i32 @pipe_handler_send_created_ind(%struct.sock* %94)
  store i32 %95, i32* %3, align 4
  br label %96

96:                                               ; preds = %93, %47, %29, %18
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local %struct.pep_sock* @pep_sk(%struct.sock*) #1

declare dso_local i32 @pskb_pull(%struct.sk_buff*, i32) #1

declare dso_local %struct.pnpipehdr* @pnp_hdr(%struct.sk_buff*) #1

declare dso_local i64* @pep_get_sb(%struct.sk_buff*, i64*, i64*, i64*) #1

declare dso_local i8* @pipe_negotiate_fc(i64*, i32) #1

declare dso_local i32 @pipe_handler_send_created_ind(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

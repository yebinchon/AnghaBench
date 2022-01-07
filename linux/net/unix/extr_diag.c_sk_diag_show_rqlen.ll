; ModuleID = '/home/carl/AnghaBench/linux/net/unix/extr_diag.c_sk_diag_show_rqlen.c'
source_filename = "/home/carl/AnghaBench/linux/net/unix/extr_diag.c_sk_diag_show_rqlen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }
%struct.sk_buff = type { i32 }
%struct.unix_diag_rqlen = type { i8*, i8* }

@TCP_LISTEN = common dso_local global i64 0, align 8
@UNIX_DIAG_RQLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*)* @sk_diag_show_rqlen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sk_diag_show_rqlen(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.unix_diag_rqlen, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %6 = load %struct.sock*, %struct.sock** %3, align 8
  %7 = getelementptr inbounds %struct.sock, %struct.sock* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @TCP_LISTEN, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %21

11:                                               ; preds = %2
  %12 = load %struct.sock*, %struct.sock** %3, align 8
  %13 = getelementptr inbounds %struct.sock, %struct.sock* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = getelementptr inbounds %struct.unix_diag_rqlen, %struct.unix_diag_rqlen* %5, i32 0, i32 1
  store i8* %15, i8** %16, align 8
  %17 = load %struct.sock*, %struct.sock** %3, align 8
  %18 = getelementptr inbounds %struct.sock, %struct.sock* %17, i32 0, i32 1
  %19 = load i8*, i8** %18, align 8
  %20 = getelementptr inbounds %struct.unix_diag_rqlen, %struct.unix_diag_rqlen* %5, i32 0, i32 0
  store i8* %19, i8** %20, align 8
  br label %30

21:                                               ; preds = %2
  %22 = load %struct.sock*, %struct.sock** %3, align 8
  %23 = call i64 @unix_inq_len(%struct.sock* %22)
  %24 = inttoptr i64 %23 to i8*
  %25 = getelementptr inbounds %struct.unix_diag_rqlen, %struct.unix_diag_rqlen* %5, i32 0, i32 1
  store i8* %24, i8** %25, align 8
  %26 = load %struct.sock*, %struct.sock** %3, align 8
  %27 = call i64 @unix_outq_len(%struct.sock* %26)
  %28 = inttoptr i64 %27 to i8*
  %29 = getelementptr inbounds %struct.unix_diag_rqlen, %struct.unix_diag_rqlen* %5, i32 0, i32 0
  store i8* %28, i8** %29, align 8
  br label %30

30:                                               ; preds = %21, %11
  %31 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %32 = load i32, i32* @UNIX_DIAG_RQLEN, align 4
  %33 = call i32 @nla_put(%struct.sk_buff* %31, i32 %32, i32 16, %struct.unix_diag_rqlen* %5)
  ret i32 %33
}

declare dso_local i64 @unix_inq_len(%struct.sock*) #1

declare dso_local i64 @unix_outq_len(%struct.sock*) #1

declare dso_local i32 @nla_put(%struct.sk_buff*, i32, i32, %struct.unix_diag_rqlen*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

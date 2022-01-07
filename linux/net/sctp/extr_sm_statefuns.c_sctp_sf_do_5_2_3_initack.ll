; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_sm_statefuns.c_sctp_sf_do_5_2_3_initack.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_sm_statefuns.c_sctp_sf_do_5_2_3_initack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.sctp_endpoint = type { i32 }
%struct.sctp_association = type { i32 }
%struct.sctp_cmd_seq = type { i32 }
%union.sctp_subtype = type { i32 }
%struct.TYPE_4__ = type { %struct.sctp_endpoint* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_sf_do_5_2_3_initack(%struct.net* %0, %struct.sctp_endpoint* %1, %struct.sctp_association* %2, i32 %3, i8* %4, %struct.sctp_cmd_seq* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %union.sctp_subtype, align 4
  %9 = alloca %struct.net*, align 8
  %10 = alloca %struct.sctp_endpoint*, align 8
  %11 = alloca %struct.sctp_association*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.sctp_cmd_seq*, align 8
  %14 = getelementptr inbounds %union.sctp_subtype, %union.sctp_subtype* %8, i32 0, i32 0
  store i32 %3, i32* %14, align 4
  store %struct.net* %0, %struct.net** %9, align 8
  store %struct.sctp_endpoint* %1, %struct.sctp_endpoint** %10, align 8
  store %struct.sctp_association* %2, %struct.sctp_association** %11, align 8
  store i8* %4, i8** %12, align 8
  store %struct.sctp_cmd_seq* %5, %struct.sctp_cmd_seq** %13, align 8
  %15 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %10, align 8
  %16 = load %struct.net*, %struct.net** %9, align 8
  %17 = getelementptr inbounds %struct.net, %struct.net* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.TYPE_4__* @sctp_sk(i32 %19)
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %21, align 8
  %23 = icmp eq %struct.sctp_endpoint* %15, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %6
  %25 = load %struct.net*, %struct.net** %9, align 8
  %26 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %10, align 8
  %27 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %28 = load i8*, i8** %12, align 8
  %29 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %30 = getelementptr inbounds %union.sctp_subtype, %union.sctp_subtype* %8, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @sctp_sf_ootb(%struct.net* %25, %struct.sctp_endpoint* %26, %struct.sctp_association* %27, i32 %31, i8* %28, %struct.sctp_cmd_seq* %29)
  store i32 %32, i32* %7, align 4
  br label %42

33:                                               ; preds = %6
  %34 = load %struct.net*, %struct.net** %9, align 8
  %35 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %10, align 8
  %36 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %37 = load i8*, i8** %12, align 8
  %38 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %39 = getelementptr inbounds %union.sctp_subtype, %union.sctp_subtype* %8, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @sctp_sf_discard_chunk(%struct.net* %34, %struct.sctp_endpoint* %35, %struct.sctp_association* %36, i32 %40, i8* %37, %struct.sctp_cmd_seq* %38)
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %33, %24
  %43 = load i32, i32* %7, align 4
  ret i32 %43
}

declare dso_local %struct.TYPE_4__* @sctp_sk(i32) #1

declare dso_local i32 @sctp_sf_ootb(%struct.net*, %struct.sctp_endpoint*, %struct.sctp_association*, i32, i8*, %struct.sctp_cmd_seq*) #1

declare dso_local i32 @sctp_sf_discard_chunk(%struct.net*, %struct.sctp_endpoint*, %struct.sctp_association*, i32, i8*, %struct.sctp_cmd_seq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

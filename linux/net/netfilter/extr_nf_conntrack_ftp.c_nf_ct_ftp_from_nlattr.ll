; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_ftp.c_nf_ct_ftp_from_nlattr.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_ftp.c_nf_ct_ftp_from_nlattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }
%struct.nf_conn = type { i32 }
%struct.nf_ct_ftp_master = type { i32* }

@NF_CT_FTP_SEQ_PICKUP = common dso_local global i32 0, align 4
@IP_CT_DIR_ORIGINAL = common dso_local global i64 0, align 8
@IP_CT_DIR_REPLY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlattr*, %struct.nf_conn*)* @nf_ct_ftp_from_nlattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nf_ct_ftp_from_nlattr(%struct.nlattr* %0, %struct.nf_conn* %1) #0 {
  %3 = alloca %struct.nlattr*, align 8
  %4 = alloca %struct.nf_conn*, align 8
  %5 = alloca %struct.nf_ct_ftp_master*, align 8
  store %struct.nlattr* %0, %struct.nlattr** %3, align 8
  store %struct.nf_conn* %1, %struct.nf_conn** %4, align 8
  %6 = load %struct.nf_conn*, %struct.nf_conn** %4, align 8
  %7 = call %struct.nf_ct_ftp_master* @nfct_help_data(%struct.nf_conn* %6)
  store %struct.nf_ct_ftp_master* %7, %struct.nf_ct_ftp_master** %5, align 8
  %8 = load i32, i32* @NF_CT_FTP_SEQ_PICKUP, align 4
  %9 = load %struct.nf_ct_ftp_master*, %struct.nf_ct_ftp_master** %5, align 8
  %10 = getelementptr inbounds %struct.nf_ct_ftp_master, %struct.nf_ct_ftp_master* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = load i64, i64* @IP_CT_DIR_ORIGINAL, align 8
  %13 = getelementptr inbounds i32, i32* %11, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = or i32 %14, %8
  store i32 %15, i32* %13, align 4
  %16 = load i32, i32* @NF_CT_FTP_SEQ_PICKUP, align 4
  %17 = load %struct.nf_ct_ftp_master*, %struct.nf_ct_ftp_master** %5, align 8
  %18 = getelementptr inbounds %struct.nf_ct_ftp_master, %struct.nf_ct_ftp_master* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i64, i64* @IP_CT_DIR_REPLY, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %16
  store i32 %23, i32* %21, align 4
  ret i32 0
}

declare dso_local %struct.nf_ct_ftp_master* @nfct_help_data(%struct.nf_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/fs/lockd/extr_xdr.c_nlmsvc_decode_reboot.c'
source_filename = "/home/carl/AnghaBench/linux/fs/lockd/extr_xdr.c_nlmsvc_decode_reboot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { %struct.nlm_reboot* }
%struct.nlm_reboot = type { %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@SM_MAXSTRLEN = common dso_local global i32 0, align 4
@SM_PRIV_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nlmsvc_decode_reboot(%struct.svc_rqst* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.svc_rqst*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.nlm_reboot*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %8 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %7, i32 0, i32 0
  %9 = load %struct.nlm_reboot*, %struct.nlm_reboot** %8, align 8
  store %struct.nlm_reboot* %9, %struct.nlm_reboot** %6, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = load %struct.nlm_reboot*, %struct.nlm_reboot** %6, align 8
  %12 = getelementptr inbounds %struct.nlm_reboot, %struct.nlm_reboot* %11, i32 0, i32 3
  %13 = load %struct.nlm_reboot*, %struct.nlm_reboot** %6, align 8
  %14 = getelementptr inbounds %struct.nlm_reboot, %struct.nlm_reboot* %13, i32 0, i32 2
  %15 = load i32, i32* @SM_MAXSTRLEN, align 4
  %16 = call i32* @xdr_decode_string_inplace(i32* %10, i32* %12, i32* %14, i32 %15)
  store i32* %16, i32** %5, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %39

19:                                               ; preds = %2
  %20 = load i32*, i32** %5, align 8
  %21 = getelementptr inbounds i32, i32* %20, i32 1
  store i32* %21, i32** %5, align 8
  %22 = load i32, i32* %20, align 4
  %23 = call i32 @ntohl(i32 %22)
  %24 = load %struct.nlm_reboot*, %struct.nlm_reboot** %6, align 8
  %25 = getelementptr inbounds %struct.nlm_reboot, %struct.nlm_reboot* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load %struct.nlm_reboot*, %struct.nlm_reboot** %6, align 8
  %27 = getelementptr inbounds %struct.nlm_reboot, %struct.nlm_reboot* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @memcpy(i32* %28, i32* %29, i32 4)
  %31 = load i32, i32* @SM_PRIV_SIZE, align 4
  %32 = call i32 @XDR_QUADLEN(i32 %31)
  %33 = load i32*, i32** %5, align 8
  %34 = sext i32 %32 to i64
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  store i32* %35, i32** %5, align 8
  %36 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %37 = load i32*, i32** %5, align 8
  %38 = call i32 @xdr_argsize_check(%struct.svc_rqst* %36, i32* %37)
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %19, %18
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32* @xdr_decode_string_inplace(i32*, i32*, i32*, i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @XDR_QUADLEN(i32) #1

declare dso_local i32 @xdr_argsize_check(%struct.svc_rqst*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

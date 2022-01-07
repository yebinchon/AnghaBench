; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfssvc.c_nfsd_rpcbind_set.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfssvc.c_nfsd_rpcbind_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.svc_program = type { i32 }

@nfsd_net_id = common dso_local global i32 0, align 4
@NFSD_TEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.svc_program*, i32, i32, i16, i16)* @nfsd_rpcbind_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsd_rpcbind_set(%struct.net* %0, %struct.svc_program* %1, i32 %2, i32 %3, i16 zeroext %4, i16 zeroext %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.svc_program*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i16, align 2
  %13 = alloca i16, align 2
  store %struct.net* %0, %struct.net** %8, align 8
  store %struct.svc_program* %1, %struct.svc_program** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i16 %4, i16* %12, align 2
  store i16 %5, i16* %13, align 2
  %14 = load %struct.net*, %struct.net** %8, align 8
  %15 = load i32, i32* @nfsd_net_id, align 4
  %16 = call i32 @net_generic(%struct.net* %14, i32 %15)
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* @NFSD_TEST, align 4
  %19 = call i32 @nfsd_vers(i32 %16, i32 %17, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %30

22:                                               ; preds = %6
  %23 = load %struct.net*, %struct.net** %8, align 8
  %24 = load %struct.svc_program*, %struct.svc_program** %9, align 8
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* %11, align 4
  %27 = load i16, i16* %12, align 2
  %28 = load i16, i16* %13, align 2
  %29 = call i32 @svc_generic_rpcbind_set(%struct.net* %23, %struct.svc_program* %24, i32 %25, i32 %26, i16 zeroext %27, i16 zeroext %28)
  store i32 %29, i32* %7, align 4
  br label %30

30:                                               ; preds = %22, %21
  %31 = load i32, i32* %7, align 4
  ret i32 %31
}

declare dso_local i32 @nfsd_vers(i32, i32, i32) #1

declare dso_local i32 @net_generic(%struct.net*, i32) #1

declare dso_local i32 @svc_generic_rpcbind_set(%struct.net*, %struct.svc_program*, i32, i32, i16 zeroext, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

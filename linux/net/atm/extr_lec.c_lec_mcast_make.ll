; ModuleID = '/home/carl/AnghaBench/linux/net/atm/extr_lec.c_lec_mcast_make.c'
source_filename = "/home/carl/AnghaBench/linux/net/atm/extr_lec.c_lec_mcast_make.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lec_priv = type { i32, %struct.atm_vcc* }
%struct.atm_vcc = type { i32, %struct.TYPE_4__, i32, %struct.lec_vcc_priv* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.lec_vcc_priv = type { i32, i64 }
%struct.lec_arp_table = type { i32, %struct.atm_vcc*, i32, i32, i32 }

@__const.lec_mcast_make.mac_addr = private unnamed_addr constant [6 x i8] c"\FF\FF\FF\FF\FF\FF", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@lec_pop = common dso_local global i32 0, align 4
@ATM_ESA_LEN = common dso_local global i32 0, align 4
@ESI_FORWARD_DIRECT = common dso_local global i32 0, align 4
@LEC_PERMANENT_FLAG = common dso_local global i32 0, align 4
@lec_push = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lec_priv*, %struct.atm_vcc*)* @lec_mcast_make to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lec_mcast_make(%struct.lec_priv* %0, %struct.atm_vcc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lec_priv*, align 8
  %5 = alloca %struct.atm_vcc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca [6 x i8], align 1
  %8 = alloca %struct.lec_arp_table*, align 8
  %9 = alloca %struct.lec_vcc_priv*, align 8
  %10 = alloca i32, align 4
  store %struct.lec_priv* %0, %struct.lec_priv** %4, align 8
  store %struct.atm_vcc* %1, %struct.atm_vcc** %5, align 8
  %11 = bitcast [6 x i8]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 getelementptr inbounds ([6 x i8], [6 x i8]* @__const.lec_mcast_make.mac_addr, i32 0, i32 0), i64 6, i1 false)
  store i32 0, i32* %10, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.lec_vcc_priv* @kmalloc(i32 16, i32 %12)
  store %struct.lec_vcc_priv* %13, %struct.lec_vcc_priv** %9, align 8
  %14 = load %struct.lec_vcc_priv*, %struct.lec_vcc_priv** %9, align 8
  %15 = icmp ne %struct.lec_vcc_priv* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %94

19:                                               ; preds = %2
  %20 = load %struct.lec_vcc_priv*, %struct.lec_vcc_priv** %9, align 8
  %21 = getelementptr inbounds %struct.lec_vcc_priv, %struct.lec_vcc_priv* %20, i32 0, i32 1
  store i64 0, i64* %21, align 8
  %22 = load %struct.atm_vcc*, %struct.atm_vcc** %5, align 8
  %23 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.lec_vcc_priv*, %struct.lec_vcc_priv** %9, align 8
  %26 = getelementptr inbounds %struct.lec_vcc_priv, %struct.lec_vcc_priv* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load %struct.lec_vcc_priv*, %struct.lec_vcc_priv** %9, align 8
  %28 = load %struct.atm_vcc*, %struct.atm_vcc** %5, align 8
  %29 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %28, i32 0, i32 3
  store %struct.lec_vcc_priv* %27, %struct.lec_vcc_priv** %29, align 8
  %30 = load i32, i32* @lec_pop, align 4
  %31 = load %struct.atm_vcc*, %struct.atm_vcc** %5, align 8
  %32 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 8
  %33 = load %struct.lec_priv*, %struct.lec_priv** %4, align 8
  %34 = getelementptr inbounds %struct.lec_priv, %struct.lec_priv* %33, i32 0, i32 0
  %35 = load i64, i64* %6, align 8
  %36 = call i32 @spin_lock_irqsave(i32* %34, i64 %35)
  %37 = load %struct.lec_priv*, %struct.lec_priv** %4, align 8
  %38 = getelementptr inbounds [6 x i8], [6 x i8]* %7, i64 0, i64 0
  %39 = call %struct.lec_arp_table* @make_entry(%struct.lec_priv* %37, i8* %38)
  store %struct.lec_arp_table* %39, %struct.lec_arp_table** %8, align 8
  %40 = load %struct.lec_arp_table*, %struct.lec_arp_table** %8, align 8
  %41 = icmp ne %struct.lec_arp_table* %40, null
  br i1 %41, label %52, label %42

42:                                               ; preds = %19
  %43 = load %struct.lec_vcc_priv*, %struct.lec_vcc_priv** %9, align 8
  %44 = getelementptr inbounds %struct.lec_vcc_priv, %struct.lec_vcc_priv* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.atm_vcc*, %struct.atm_vcc** %5, align 8
  %47 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 8
  %48 = load %struct.lec_vcc_priv*, %struct.lec_vcc_priv** %9, align 8
  %49 = call i32 @kfree(%struct.lec_vcc_priv* %48)
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %10, align 4
  br label %88

52:                                               ; preds = %19
  %53 = load %struct.lec_arp_table*, %struct.lec_arp_table** %8, align 8
  %54 = getelementptr inbounds %struct.lec_arp_table, %struct.lec_arp_table* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.atm_vcc*, %struct.atm_vcc** %5, align 8
  %57 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @ATM_ESA_LEN, align 4
  %62 = call i32 @memcpy(i32 %55, i32 %60, i32 %61)
  %63 = load i32, i32* @ESI_FORWARD_DIRECT, align 4
  %64 = load %struct.lec_arp_table*, %struct.lec_arp_table** %8, align 8
  %65 = getelementptr inbounds %struct.lec_arp_table, %struct.lec_arp_table* %64, i32 0, i32 3
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* @LEC_PERMANENT_FLAG, align 4
  %67 = load %struct.lec_arp_table*, %struct.lec_arp_table** %8, align 8
  %68 = getelementptr inbounds %struct.lec_arp_table, %struct.lec_arp_table* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 8
  %71 = load %struct.atm_vcc*, %struct.atm_vcc** %5, align 8
  %72 = load %struct.lec_arp_table*, %struct.lec_arp_table** %8, align 8
  %73 = getelementptr inbounds %struct.lec_arp_table, %struct.lec_arp_table* %72, i32 0, i32 1
  store %struct.atm_vcc* %71, %struct.atm_vcc** %73, align 8
  %74 = load %struct.atm_vcc*, %struct.atm_vcc** %5, align 8
  %75 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.lec_arp_table*, %struct.lec_arp_table** %8, align 8
  %78 = getelementptr inbounds %struct.lec_arp_table, %struct.lec_arp_table* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  %79 = load i32, i32* @lec_push, align 4
  %80 = load %struct.atm_vcc*, %struct.atm_vcc** %5, align 8
  %81 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 8
  %82 = load %struct.atm_vcc*, %struct.atm_vcc** %5, align 8
  %83 = load %struct.lec_priv*, %struct.lec_priv** %4, align 8
  %84 = getelementptr inbounds %struct.lec_priv, %struct.lec_priv* %83, i32 0, i32 1
  store %struct.atm_vcc* %82, %struct.atm_vcc** %84, align 8
  %85 = load %struct.lec_priv*, %struct.lec_priv** %4, align 8
  %86 = load %struct.lec_arp_table*, %struct.lec_arp_table** %8, align 8
  %87 = call i32 @lec_arp_add(%struct.lec_priv* %85, %struct.lec_arp_table* %86)
  br label %88

88:                                               ; preds = %52, %42
  %89 = load %struct.lec_priv*, %struct.lec_priv** %4, align 8
  %90 = getelementptr inbounds %struct.lec_priv, %struct.lec_priv* %89, i32 0, i32 0
  %91 = load i64, i64* %6, align 8
  %92 = call i32 @spin_unlock_irqrestore(i32* %90, i64 %91)
  %93 = load i32, i32* %10, align 4
  store i32 %93, i32* %3, align 4
  br label %94

94:                                               ; preds = %88, %16
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.lec_vcc_priv* @kmalloc(i32, i32) #2

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #2

declare dso_local %struct.lec_arp_table* @make_entry(%struct.lec_priv*, i8*) #2

declare dso_local i32 @kfree(%struct.lec_vcc_priv*) #2

declare dso_local i32 @memcpy(i32, i32, i32) #2

declare dso_local i32 @lec_arp_add(%struct.lec_priv*, %struct.lec_arp_table*) #2

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

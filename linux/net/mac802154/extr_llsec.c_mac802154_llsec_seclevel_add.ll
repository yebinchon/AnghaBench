; ModuleID = '/home/carl/AnghaBench/linux/net/mac802154/extr_llsec.c_mac802154_llsec_seclevel_add.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac802154/extr_llsec.c_mac802154_llsec_seclevel_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mac802154_llsec = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ieee802154_llsec_seclevel = type { i32 }
%struct.mac802154_llsec_seclevel = type { %struct.ieee802154_llsec_seclevel }

@EEXIST = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mac802154_llsec_seclevel_add(%struct.mac802154_llsec* %0, %struct.ieee802154_llsec_seclevel* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mac802154_llsec*, align 8
  %5 = alloca %struct.ieee802154_llsec_seclevel*, align 8
  %6 = alloca %struct.mac802154_llsec_seclevel*, align 8
  store %struct.mac802154_llsec* %0, %struct.mac802154_llsec** %4, align 8
  store %struct.ieee802154_llsec_seclevel* %1, %struct.ieee802154_llsec_seclevel** %5, align 8
  %7 = load %struct.mac802154_llsec*, %struct.mac802154_llsec** %4, align 8
  %8 = load %struct.ieee802154_llsec_seclevel*, %struct.ieee802154_llsec_seclevel** %5, align 8
  %9 = call i64 @llsec_find_seclevel(%struct.mac802154_llsec* %7, %struct.ieee802154_llsec_seclevel* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @EEXIST, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %35

14:                                               ; preds = %2
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.mac802154_llsec_seclevel* @kmalloc(i32 4, i32 %15)
  store %struct.mac802154_llsec_seclevel* %16, %struct.mac802154_llsec_seclevel** %6, align 8
  %17 = load %struct.mac802154_llsec_seclevel*, %struct.mac802154_llsec_seclevel** %6, align 8
  %18 = icmp ne %struct.mac802154_llsec_seclevel* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %35

22:                                               ; preds = %14
  %23 = load %struct.mac802154_llsec_seclevel*, %struct.mac802154_llsec_seclevel** %6, align 8
  %24 = getelementptr inbounds %struct.mac802154_llsec_seclevel, %struct.mac802154_llsec_seclevel* %23, i32 0, i32 0
  %25 = load %struct.ieee802154_llsec_seclevel*, %struct.ieee802154_llsec_seclevel** %5, align 8
  %26 = bitcast %struct.ieee802154_llsec_seclevel* %24 to i8*
  %27 = bitcast %struct.ieee802154_llsec_seclevel* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %26, i8* align 4 %27, i64 4, i1 false)
  %28 = load %struct.mac802154_llsec_seclevel*, %struct.mac802154_llsec_seclevel** %6, align 8
  %29 = getelementptr inbounds %struct.mac802154_llsec_seclevel, %struct.mac802154_llsec_seclevel* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.ieee802154_llsec_seclevel, %struct.ieee802154_llsec_seclevel* %29, i32 0, i32 0
  %31 = load %struct.mac802154_llsec*, %struct.mac802154_llsec** %4, align 8
  %32 = getelementptr inbounds %struct.mac802154_llsec, %struct.mac802154_llsec* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = call i32 @list_add_tail_rcu(i32* %30, i32* %33)
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %22, %19, %11
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i64 @llsec_find_seclevel(%struct.mac802154_llsec*, %struct.ieee802154_llsec_seclevel*) #1

declare dso_local %struct.mac802154_llsec_seclevel* @kmalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @list_add_tail_rcu(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/net/mac802154/extr_llsec.c_mac802154_llsec_dev_add.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac802154/extr_llsec.c_mac802154_llsec_dev_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mac802154_llsec = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ieee802154_llsec_device = type { i32, i32, i32, i32, i32 }
%struct.mac802154_llsec_device = type { %struct.ieee802154_llsec_device, i32, i32, i32 }

@IEEE802154_ADDR_LEN = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mac802154_llsec_dev_add(%struct.mac802154_llsec* %0, %struct.ieee802154_llsec_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mac802154_llsec*, align 8
  %5 = alloca %struct.ieee802154_llsec_device*, align 8
  %6 = alloca %struct.mac802154_llsec_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mac802154_llsec* %0, %struct.mac802154_llsec** %4, align 8
  store %struct.ieee802154_llsec_device* %1, %struct.ieee802154_llsec_device** %5, align 8
  %9 = load %struct.ieee802154_llsec_device*, %struct.ieee802154_llsec_device** %5, align 8
  %10 = getelementptr inbounds %struct.ieee802154_llsec_device, %struct.ieee802154_llsec_device* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.ieee802154_llsec_device*, %struct.ieee802154_llsec_device** %5, align 8
  %13 = getelementptr inbounds %struct.ieee802154_llsec_device, %struct.ieee802154_llsec_device* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @llsec_dev_hash_short(i32 %11, i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load %struct.ieee802154_llsec_device*, %struct.ieee802154_llsec_device** %5, align 8
  %17 = getelementptr inbounds %struct.ieee802154_llsec_device, %struct.ieee802154_llsec_device* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @llsec_dev_hash_long(i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* @IEEE802154_ADDR_LEN, align 4
  %21 = sext i32 %20 to i64
  %22 = icmp ne i64 4, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @BUILD_BUG_ON(i32 %23)
  %25 = load %struct.ieee802154_llsec_device*, %struct.ieee802154_llsec_device** %5, align 8
  %26 = getelementptr inbounds %struct.ieee802154_llsec_device, %struct.ieee802154_llsec_device* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @llsec_dev_use_shortaddr(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %2
  %31 = load %struct.mac802154_llsec*, %struct.mac802154_llsec** %4, align 8
  %32 = load %struct.ieee802154_llsec_device*, %struct.ieee802154_llsec_device** %5, align 8
  %33 = getelementptr inbounds %struct.ieee802154_llsec_device, %struct.ieee802154_llsec_device* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ieee802154_llsec_device*, %struct.ieee802154_llsec_device** %5, align 8
  %36 = getelementptr inbounds %struct.ieee802154_llsec_device, %struct.ieee802154_llsec_device* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @llsec_dev_find_short(%struct.mac802154_llsec* %31, i32 %34, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %30, %2
  %41 = load %struct.mac802154_llsec*, %struct.mac802154_llsec** %4, align 8
  %42 = load %struct.ieee802154_llsec_device*, %struct.ieee802154_llsec_device** %5, align 8
  %43 = getelementptr inbounds %struct.ieee802154_llsec_device, %struct.ieee802154_llsec_device* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @llsec_dev_find_long(%struct.mac802154_llsec* %41, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %40, %30
  %48 = load i32, i32* @EEXIST, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %103

50:                                               ; preds = %40
  %51 = load i32, i32* @GFP_KERNEL, align 4
  %52 = call %struct.mac802154_llsec_device* @kmalloc(i32 32, i32 %51)
  store %struct.mac802154_llsec_device* %52, %struct.mac802154_llsec_device** %6, align 8
  %53 = load %struct.mac802154_llsec_device*, %struct.mac802154_llsec_device** %6, align 8
  %54 = icmp ne %struct.mac802154_llsec_device* %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %50
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %103

58:                                               ; preds = %50
  %59 = load %struct.mac802154_llsec_device*, %struct.mac802154_llsec_device** %6, align 8
  %60 = getelementptr inbounds %struct.mac802154_llsec_device, %struct.mac802154_llsec_device* %59, i32 0, i32 0
  %61 = load %struct.ieee802154_llsec_device*, %struct.ieee802154_llsec_device** %5, align 8
  %62 = bitcast %struct.ieee802154_llsec_device* %60 to i8*
  %63 = bitcast %struct.ieee802154_llsec_device* %61 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %62, i8* align 4 %63, i64 20, i1 false)
  %64 = load %struct.mac802154_llsec_device*, %struct.mac802154_llsec_device** %6, align 8
  %65 = getelementptr inbounds %struct.mac802154_llsec_device, %struct.mac802154_llsec_device* %64, i32 0, i32 3
  %66 = call i32 @spin_lock_init(i32* %65)
  %67 = load %struct.mac802154_llsec_device*, %struct.mac802154_llsec_device** %6, align 8
  %68 = getelementptr inbounds %struct.mac802154_llsec_device, %struct.mac802154_llsec_device* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.ieee802154_llsec_device, %struct.ieee802154_llsec_device* %68, i32 0, i32 2
  %70 = call i32 @INIT_LIST_HEAD(i32* %69)
  %71 = load %struct.ieee802154_llsec_device*, %struct.ieee802154_llsec_device** %5, align 8
  %72 = getelementptr inbounds %struct.ieee802154_llsec_device, %struct.ieee802154_llsec_device* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i64 @llsec_dev_use_shortaddr(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %58
  %77 = load %struct.mac802154_llsec*, %struct.mac802154_llsec** %4, align 8
  %78 = getelementptr inbounds %struct.mac802154_llsec, %struct.mac802154_llsec* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.mac802154_llsec_device*, %struct.mac802154_llsec_device** %6, align 8
  %81 = getelementptr inbounds %struct.mac802154_llsec_device, %struct.mac802154_llsec_device* %80, i32 0, i32 2
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @hash_add_rcu(i32 %79, i32* %81, i32 %82)
  br label %88

84:                                               ; preds = %58
  %85 = load %struct.mac802154_llsec_device*, %struct.mac802154_llsec_device** %6, align 8
  %86 = getelementptr inbounds %struct.mac802154_llsec_device, %struct.mac802154_llsec_device* %85, i32 0, i32 2
  %87 = call i32 @INIT_HLIST_NODE(i32* %86)
  br label %88

88:                                               ; preds = %84, %76
  %89 = load %struct.mac802154_llsec*, %struct.mac802154_llsec** %4, align 8
  %90 = getelementptr inbounds %struct.mac802154_llsec, %struct.mac802154_llsec* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.mac802154_llsec_device*, %struct.mac802154_llsec_device** %6, align 8
  %93 = getelementptr inbounds %struct.mac802154_llsec_device, %struct.mac802154_llsec_device* %92, i32 0, i32 1
  %94 = load i32, i32* %8, align 4
  %95 = call i32 @hash_add_rcu(i32 %91, i32* %93, i32 %94)
  %96 = load %struct.mac802154_llsec_device*, %struct.mac802154_llsec_device** %6, align 8
  %97 = getelementptr inbounds %struct.mac802154_llsec_device, %struct.mac802154_llsec_device* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.ieee802154_llsec_device, %struct.ieee802154_llsec_device* %97, i32 0, i32 0
  %99 = load %struct.mac802154_llsec*, %struct.mac802154_llsec** %4, align 8
  %100 = getelementptr inbounds %struct.mac802154_llsec, %struct.mac802154_llsec* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = call i32 @list_add_tail_rcu(i32* %98, i32* %101)
  store i32 0, i32* %3, align 4
  br label %103

103:                                              ; preds = %88, %55, %47
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local i32 @llsec_dev_hash_short(i32, i32) #1

declare dso_local i32 @llsec_dev_hash_long(i32) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i64 @llsec_dev_use_shortaddr(i32) #1

declare dso_local i64 @llsec_dev_find_short(%struct.mac802154_llsec*, i32, i32) #1

declare dso_local i64 @llsec_dev_find_long(%struct.mac802154_llsec*, i32) #1

declare dso_local %struct.mac802154_llsec_device* @kmalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @hash_add_rcu(i32, i32*, i32) #1

declare dso_local i32 @INIT_HLIST_NODE(i32*) #1

declare dso_local i32 @list_add_tail_rcu(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

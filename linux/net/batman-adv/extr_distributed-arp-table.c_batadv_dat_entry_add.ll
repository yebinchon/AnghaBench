; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_distributed-arp-table.c_batadv_dat_entry_add.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_distributed-arp-table.c_batadv_dat_entry_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.batadv_dat_entry = type { i16, i32, i32, i32, i32, i8* }

@jiffies = common dso_local global i8* null, align 8
@BATADV_DBG_DAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Entry updated: %pI4 %pM (vid: %d)\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@batadv_compare_dat = common dso_local global i32 0, align 4
@batadv_hash_dat = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"New entry added: %pI4 %pM (vid: %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.batadv_priv*, i32, i32*, i16)* @batadv_dat_entry_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @batadv_dat_entry_add(%struct.batadv_priv* %0, i32 %1, i32* %2, i16 zeroext %3) #0 {
  %5 = alloca %struct.batadv_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i16, align 2
  %9 = alloca %struct.batadv_dat_entry*, align 8
  %10 = alloca i32, align 4
  store %struct.batadv_priv* %0, %struct.batadv_priv** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i16 %3, i16* %8, align 2
  %11 = load %struct.batadv_priv*, %struct.batadv_priv** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i16, i16* %8, align 2
  %14 = call %struct.batadv_dat_entry* @batadv_dat_entry_hash_find(%struct.batadv_priv* %11, i32 %12, i16 zeroext %13)
  store %struct.batadv_dat_entry* %14, %struct.batadv_dat_entry** %9, align 8
  %15 = load %struct.batadv_dat_entry*, %struct.batadv_dat_entry** %9, align 8
  %16 = icmp ne %struct.batadv_dat_entry* %15, null
  br i1 %16, label %17, label %44

17:                                               ; preds = %4
  %18 = load %struct.batadv_dat_entry*, %struct.batadv_dat_entry** %9, align 8
  %19 = getelementptr inbounds %struct.batadv_dat_entry, %struct.batadv_dat_entry* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32*, i32** %7, align 8
  %22 = call i32 @batadv_compare_eth(i32 %20, i32* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %17
  %25 = load %struct.batadv_dat_entry*, %struct.batadv_dat_entry** %9, align 8
  %26 = getelementptr inbounds %struct.batadv_dat_entry, %struct.batadv_dat_entry* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** %7, align 8
  %29 = call i32 @ether_addr_copy(i32 %27, i32* %28)
  br label %30

30:                                               ; preds = %24, %17
  %31 = load i8*, i8** @jiffies, align 8
  %32 = load %struct.batadv_dat_entry*, %struct.batadv_dat_entry** %9, align 8
  %33 = getelementptr inbounds %struct.batadv_dat_entry, %struct.batadv_dat_entry* %32, i32 0, i32 5
  store i8* %31, i8** %33, align 8
  %34 = load i32, i32* @BATADV_DBG_DAT, align 4
  %35 = load %struct.batadv_priv*, %struct.batadv_priv** %5, align 8
  %36 = load %struct.batadv_dat_entry*, %struct.batadv_dat_entry** %9, align 8
  %37 = getelementptr inbounds %struct.batadv_dat_entry, %struct.batadv_dat_entry* %36, i32 0, i32 2
  %38 = load %struct.batadv_dat_entry*, %struct.batadv_dat_entry** %9, align 8
  %39 = getelementptr inbounds %struct.batadv_dat_entry, %struct.batadv_dat_entry* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i16, i16* %8, align 2
  %42 = call i32 @batadv_print_vid(i16 zeroext %41)
  %43 = call i32 @batadv_dbg(i32 %34, %struct.batadv_priv* %35, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32* %37, i32 %40, i32 %42)
  br label %100

44:                                               ; preds = %4
  %45 = load i32, i32* @GFP_ATOMIC, align 4
  %46 = call %struct.batadv_dat_entry* @kmalloc(i32 32, i32 %45)
  store %struct.batadv_dat_entry* %46, %struct.batadv_dat_entry** %9, align 8
  %47 = load %struct.batadv_dat_entry*, %struct.batadv_dat_entry** %9, align 8
  %48 = icmp ne %struct.batadv_dat_entry* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %44
  br label %100

50:                                               ; preds = %44
  %51 = load i32, i32* %6, align 4
  %52 = load %struct.batadv_dat_entry*, %struct.batadv_dat_entry** %9, align 8
  %53 = getelementptr inbounds %struct.batadv_dat_entry, %struct.batadv_dat_entry* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 8
  %54 = load i16, i16* %8, align 2
  %55 = load %struct.batadv_dat_entry*, %struct.batadv_dat_entry** %9, align 8
  %56 = getelementptr inbounds %struct.batadv_dat_entry, %struct.batadv_dat_entry* %55, i32 0, i32 0
  store i16 %54, i16* %56, align 8
  %57 = load %struct.batadv_dat_entry*, %struct.batadv_dat_entry** %9, align 8
  %58 = getelementptr inbounds %struct.batadv_dat_entry, %struct.batadv_dat_entry* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32*, i32** %7, align 8
  %61 = call i32 @ether_addr_copy(i32 %59, i32* %60)
  %62 = load i8*, i8** @jiffies, align 8
  %63 = load %struct.batadv_dat_entry*, %struct.batadv_dat_entry** %9, align 8
  %64 = getelementptr inbounds %struct.batadv_dat_entry, %struct.batadv_dat_entry* %63, i32 0, i32 5
  store i8* %62, i8** %64, align 8
  %65 = load %struct.batadv_dat_entry*, %struct.batadv_dat_entry** %9, align 8
  %66 = getelementptr inbounds %struct.batadv_dat_entry, %struct.batadv_dat_entry* %65, i32 0, i32 4
  %67 = call i32 @kref_init(i32* %66)
  %68 = load %struct.batadv_dat_entry*, %struct.batadv_dat_entry** %9, align 8
  %69 = getelementptr inbounds %struct.batadv_dat_entry, %struct.batadv_dat_entry* %68, i32 0, i32 4
  %70 = call i32 @kref_get(i32* %69)
  %71 = load %struct.batadv_priv*, %struct.batadv_priv** %5, align 8
  %72 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @batadv_compare_dat, align 4
  %76 = load i32, i32* @batadv_hash_dat, align 4
  %77 = load %struct.batadv_dat_entry*, %struct.batadv_dat_entry** %9, align 8
  %78 = load %struct.batadv_dat_entry*, %struct.batadv_dat_entry** %9, align 8
  %79 = getelementptr inbounds %struct.batadv_dat_entry, %struct.batadv_dat_entry* %78, i32 0, i32 3
  %80 = call i32 @batadv_hash_add(i32 %74, i32 %75, i32 %76, %struct.batadv_dat_entry* %77, i32* %79)
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* %10, align 4
  %82 = icmp ne i32 %81, 0
  %83 = zext i1 %82 to i32
  %84 = call i64 @unlikely(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %50
  %87 = load %struct.batadv_dat_entry*, %struct.batadv_dat_entry** %9, align 8
  %88 = call i32 @batadv_dat_entry_put(%struct.batadv_dat_entry* %87)
  br label %100

89:                                               ; preds = %50
  %90 = load i32, i32* @BATADV_DBG_DAT, align 4
  %91 = load %struct.batadv_priv*, %struct.batadv_priv** %5, align 8
  %92 = load %struct.batadv_dat_entry*, %struct.batadv_dat_entry** %9, align 8
  %93 = getelementptr inbounds %struct.batadv_dat_entry, %struct.batadv_dat_entry* %92, i32 0, i32 2
  %94 = load %struct.batadv_dat_entry*, %struct.batadv_dat_entry** %9, align 8
  %95 = getelementptr inbounds %struct.batadv_dat_entry, %struct.batadv_dat_entry* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load i16, i16* %8, align 2
  %98 = call i32 @batadv_print_vid(i16 zeroext %97)
  %99 = call i32 @batadv_dbg(i32 %90, %struct.batadv_priv* %91, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32* %93, i32 %96, i32 %98)
  br label %100

100:                                              ; preds = %89, %86, %49, %30
  %101 = load %struct.batadv_dat_entry*, %struct.batadv_dat_entry** %9, align 8
  %102 = icmp ne %struct.batadv_dat_entry* %101, null
  br i1 %102, label %103, label %106

103:                                              ; preds = %100
  %104 = load %struct.batadv_dat_entry*, %struct.batadv_dat_entry** %9, align 8
  %105 = call i32 @batadv_dat_entry_put(%struct.batadv_dat_entry* %104)
  br label %106

106:                                              ; preds = %103, %100
  ret void
}

declare dso_local %struct.batadv_dat_entry* @batadv_dat_entry_hash_find(%struct.batadv_priv*, i32, i16 zeroext) #1

declare dso_local i32 @batadv_compare_eth(i32, i32*) #1

declare dso_local i32 @ether_addr_copy(i32, i32*) #1

declare dso_local i32 @batadv_dbg(i32, %struct.batadv_priv*, i8*, i32*, i32, i32) #1

declare dso_local i32 @batadv_print_vid(i16 zeroext) #1

declare dso_local %struct.batadv_dat_entry* @kmalloc(i32, i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @batadv_hash_add(i32, i32, i32, %struct.batadv_dat_entry*, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @batadv_dat_entry_put(%struct.batadv_dat_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

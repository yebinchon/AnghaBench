; ModuleID = '/home/carl/AnghaBench/linux/net/atm/extr_lec.c_lec_arp_resolve.c'
source_filename = "/home/carl/AnghaBench/linux/net/atm/extr_lec.c_lec_arp_resolve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atm_vcc = type { i32 }
%struct.lec_priv = type { i32, i64, i32, %struct.atm_vcc* }
%struct.lec_arp_table = type { i64, i32, i64, i32, %struct.TYPE_2__, i8*, i8*, %struct.atm_vcc* }
%struct.TYPE_2__ = type { i32, i8* }

@bus_mac = common dso_local global i32 0, align 4
@ESI_FORWARD_DIRECT = common dso_local global i64 0, align 8
@jiffies = common dso_local global i8* null, align 8
@ESI_ARP_PENDING = common dso_local global i64 0, align 8
@ESI_FLUSH_PENDING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"Flooding..\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"entry->status %d entry->vcc %p\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"Making entry\0A\00", align 1
@l_rdesc_arp_xmt = common dso_local global i32 0, align 4
@l_arp_xmt = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@lec_arp_expire_arp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.atm_vcc* (%struct.lec_priv*, i8*, i32, %struct.lec_arp_table**)* @lec_arp_resolve to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.atm_vcc* @lec_arp_resolve(%struct.lec_priv* %0, i8* %1, i32 %2, %struct.lec_arp_table** %3) #0 {
  %5 = alloca %struct.atm_vcc*, align 8
  %6 = alloca %struct.lec_priv*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.lec_arp_table**, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.lec_arp_table*, align 8
  %12 = alloca %struct.atm_vcc*, align 8
  store %struct.lec_priv* %0, %struct.lec_priv** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.lec_arp_table** %3, %struct.lec_arp_table*** %9, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 0
  %15 = load i8, i8* %14, align 1
  %16 = zext i8 %15 to i32
  %17 = and i32 %16, 1
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %39

19:                                               ; preds = %4
  %20 = load %struct.lec_priv*, %struct.lec_priv** %6, align 8
  %21 = getelementptr inbounds %struct.lec_priv, %struct.lec_priv* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  switch i32 %22, label %37 [
    i32 1, label %23
    i32 2, label %27
  ]

23:                                               ; preds = %19
  %24 = load %struct.lec_priv*, %struct.lec_priv** %6, align 8
  %25 = getelementptr inbounds %struct.lec_priv, %struct.lec_priv* %24, i32 0, i32 3
  %26 = load %struct.atm_vcc*, %struct.atm_vcc** %25, align 8
  store %struct.atm_vcc* %26, %struct.atm_vcc** %5, align 8
  br label %180

27:                                               ; preds = %19
  %28 = load i8*, i8** %7, align 8
  %29 = load i32, i32* @bus_mac, align 4
  %30 = call i32 @ether_addr_equal(i8* %28, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load %struct.lec_priv*, %struct.lec_priv** %6, align 8
  %34 = getelementptr inbounds %struct.lec_priv, %struct.lec_priv* %33, i32 0, i32 3
  %35 = load %struct.atm_vcc*, %struct.atm_vcc** %34, align 8
  store %struct.atm_vcc* %35, %struct.atm_vcc** %5, align 8
  br label %180

36:                                               ; preds = %27
  br label %38

37:                                               ; preds = %19
  br label %38

38:                                               ; preds = %37, %36
  br label %39

39:                                               ; preds = %38, %4
  %40 = load %struct.lec_priv*, %struct.lec_priv** %6, align 8
  %41 = getelementptr inbounds %struct.lec_priv, %struct.lec_priv* %40, i32 0, i32 2
  %42 = load i64, i64* %10, align 8
  %43 = call i32 @spin_lock_irqsave(i32* %41, i64 %42)
  %44 = load %struct.lec_priv*, %struct.lec_priv** %6, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = call %struct.lec_arp_table* @lec_arp_find(%struct.lec_priv* %44, i8* %45)
  store %struct.lec_arp_table* %46, %struct.lec_arp_table** %11, align 8
  %47 = load %struct.lec_arp_table*, %struct.lec_arp_table** %11, align 8
  %48 = icmp ne %struct.lec_arp_table* %47, null
  br i1 %48, label %49, label %110

49:                                               ; preds = %39
  %50 = load %struct.lec_arp_table*, %struct.lec_arp_table** %11, align 8
  %51 = getelementptr inbounds %struct.lec_arp_table, %struct.lec_arp_table* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @ESI_FORWARD_DIRECT, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %66

55:                                               ; preds = %49
  %56 = load i8*, i8** @jiffies, align 8
  %57 = load %struct.lec_arp_table*, %struct.lec_arp_table** %11, align 8
  %58 = getelementptr inbounds %struct.lec_arp_table, %struct.lec_arp_table* %57, i32 0, i32 6
  store i8* %56, i8** %58, align 8
  %59 = load %struct.lec_arp_table*, %struct.lec_arp_table** %11, align 8
  %60 = call i32 @lec_arp_hold(%struct.lec_arp_table* %59)
  %61 = load %struct.lec_arp_table*, %struct.lec_arp_table** %11, align 8
  %62 = load %struct.lec_arp_table**, %struct.lec_arp_table*** %9, align 8
  store %struct.lec_arp_table* %61, %struct.lec_arp_table** %62, align 8
  %63 = load %struct.lec_arp_table*, %struct.lec_arp_table** %11, align 8
  %64 = getelementptr inbounds %struct.lec_arp_table, %struct.lec_arp_table* %63, i32 0, i32 7
  %65 = load %struct.atm_vcc*, %struct.atm_vcc** %64, align 8
  store %struct.atm_vcc* %65, %struct.atm_vcc** %12, align 8
  br label %174

66:                                               ; preds = %49
  %67 = load %struct.lec_arp_table*, %struct.lec_arp_table** %11, align 8
  %68 = getelementptr inbounds %struct.lec_arp_table, %struct.lec_arp_table* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @ESI_ARP_PENDING, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %66
  %73 = load %struct.lec_arp_table*, %struct.lec_arp_table** %11, align 8
  %74 = getelementptr inbounds %struct.lec_arp_table, %struct.lec_arp_table* %73, i32 0, i32 1
  store i32 0, i32* %74, align 8
  br label %75

75:                                               ; preds = %72, %66
  %76 = load %struct.lec_arp_table*, %struct.lec_arp_table** %11, align 8
  %77 = getelementptr inbounds %struct.lec_arp_table, %struct.lec_arp_table* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @ESI_FLUSH_PENDING, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %98

81:                                               ; preds = %75
  %82 = load %struct.lec_arp_table*, %struct.lec_arp_table** %11, align 8
  %83 = getelementptr inbounds %struct.lec_arp_table, %struct.lec_arp_table* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.lec_priv*, %struct.lec_priv** %6, align 8
  %86 = getelementptr inbounds %struct.lec_priv, %struct.lec_priv* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp slt i64 %84, %87
  br i1 %88, label %89, label %98

89:                                               ; preds = %81
  %90 = load %struct.lec_arp_table*, %struct.lec_arp_table** %11, align 8
  %91 = getelementptr inbounds %struct.lec_arp_table, %struct.lec_arp_table* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = add nsw i64 %92, 1
  store i64 %93, i64* %91, align 8
  %94 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %95 = load %struct.lec_priv*, %struct.lec_priv** %6, align 8
  %96 = getelementptr inbounds %struct.lec_priv, %struct.lec_priv* %95, i32 0, i32 3
  %97 = load %struct.atm_vcc*, %struct.atm_vcc** %96, align 8
  store %struct.atm_vcc* %97, %struct.atm_vcc** %12, align 8
  br label %174

98:                                               ; preds = %81, %75
  %99 = load %struct.lec_arp_table*, %struct.lec_arp_table** %11, align 8
  %100 = call i32 @lec_arp_hold(%struct.lec_arp_table* %99)
  %101 = load %struct.lec_arp_table*, %struct.lec_arp_table** %11, align 8
  %102 = load %struct.lec_arp_table**, %struct.lec_arp_table*** %9, align 8
  store %struct.lec_arp_table* %101, %struct.lec_arp_table** %102, align 8
  %103 = load %struct.lec_arp_table*, %struct.lec_arp_table** %11, align 8
  %104 = getelementptr inbounds %struct.lec_arp_table, %struct.lec_arp_table* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.lec_arp_table*, %struct.lec_arp_table** %11, align 8
  %107 = getelementptr inbounds %struct.lec_arp_table, %struct.lec_arp_table* %106, i32 0, i32 7
  %108 = load %struct.atm_vcc*, %struct.atm_vcc** %107, align 8
  %109 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %105, %struct.atm_vcc* %108)
  store %struct.atm_vcc* null, %struct.atm_vcc** %12, align 8
  br label %173

110:                                              ; preds = %39
  %111 = load %struct.lec_priv*, %struct.lec_priv** %6, align 8
  %112 = load i8*, i8** %7, align 8
  %113 = call %struct.lec_arp_table* @make_entry(%struct.lec_priv* %111, i8* %112)
  store %struct.lec_arp_table* %113, %struct.lec_arp_table** %11, align 8
  %114 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %115 = load %struct.lec_arp_table*, %struct.lec_arp_table** %11, align 8
  %116 = icmp ne %struct.lec_arp_table* %115, null
  br i1 %116, label %121, label %117

117:                                              ; preds = %110
  %118 = load %struct.lec_priv*, %struct.lec_priv** %6, align 8
  %119 = getelementptr inbounds %struct.lec_priv, %struct.lec_priv* %118, i32 0, i32 3
  %120 = load %struct.atm_vcc*, %struct.atm_vcc** %119, align 8
  store %struct.atm_vcc* %120, %struct.atm_vcc** %12, align 8
  br label %174

121:                                              ; preds = %110
  %122 = load %struct.lec_priv*, %struct.lec_priv** %6, align 8
  %123 = load %struct.lec_arp_table*, %struct.lec_arp_table** %11, align 8
  %124 = call i32 @lec_arp_add(%struct.lec_priv* %122, %struct.lec_arp_table* %123)
  %125 = load %struct.lec_arp_table*, %struct.lec_arp_table** %11, align 8
  %126 = getelementptr inbounds %struct.lec_arp_table, %struct.lec_arp_table* %125, i32 0, i32 2
  store i64 1, i64* %126, align 8
  %127 = load i64, i64* @ESI_ARP_PENDING, align 8
  %128 = load %struct.lec_arp_table*, %struct.lec_arp_table** %11, align 8
  %129 = getelementptr inbounds %struct.lec_arp_table, %struct.lec_arp_table* %128, i32 0, i32 0
  store i64 %127, i64* %129, align 8
  %130 = load %struct.lec_arp_table*, %struct.lec_arp_table** %11, align 8
  %131 = getelementptr inbounds %struct.lec_arp_table, %struct.lec_arp_table* %130, i32 0, i32 1
  store i32 1, i32* %131, align 8
  %132 = load i8*, i8** @jiffies, align 8
  %133 = load %struct.lec_arp_table*, %struct.lec_arp_table** %11, align 8
  %134 = getelementptr inbounds %struct.lec_arp_table, %struct.lec_arp_table* %133, i32 0, i32 5
  store i8* %132, i8** %134, align 8
  %135 = load %struct.lec_arp_table*, %struct.lec_arp_table** %11, align 8
  %136 = getelementptr inbounds %struct.lec_arp_table, %struct.lec_arp_table* %135, i32 0, i32 6
  store i8* %132, i8** %136, align 8
  %137 = load i32, i32* %8, align 4
  %138 = load %struct.lec_arp_table*, %struct.lec_arp_table** %11, align 8
  %139 = getelementptr inbounds %struct.lec_arp_table, %struct.lec_arp_table* %138, i32 0, i32 3
  store i32 %137, i32* %139, align 8
  %140 = load %struct.lec_arp_table*, %struct.lec_arp_table** %11, align 8
  %141 = getelementptr inbounds %struct.lec_arp_table, %struct.lec_arp_table* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 8
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %121
  %145 = load %struct.lec_priv*, %struct.lec_priv** %6, align 8
  %146 = load i32, i32* @l_rdesc_arp_xmt, align 4
  %147 = load i8*, i8** %7, align 8
  %148 = call i32 @send_to_lecd(%struct.lec_priv* %145, i32 %146, i8* %147, i32* null, i32* null)
  br label %154

149:                                              ; preds = %121
  %150 = load %struct.lec_priv*, %struct.lec_priv** %6, align 8
  %151 = load i32, i32* @l_arp_xmt, align 4
  %152 = load i8*, i8** %7, align 8
  %153 = call i32 @send_to_lecd(%struct.lec_priv* %150, i32 %151, i8* %152, i32* null, i32* null)
  br label %154

154:                                              ; preds = %149, %144
  %155 = load i8*, i8** @jiffies, align 8
  %156 = load i32, i32* @HZ, align 4
  %157 = mul nsw i32 1, %156
  %158 = sext i32 %157 to i64
  %159 = getelementptr i8, i8* %155, i64 %158
  %160 = load %struct.lec_arp_table*, %struct.lec_arp_table** %11, align 8
  %161 = getelementptr inbounds %struct.lec_arp_table, %struct.lec_arp_table* %160, i32 0, i32 4
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i32 0, i32 1
  store i8* %159, i8** %162, align 8
  %163 = load i32, i32* @lec_arp_expire_arp, align 4
  %164 = load %struct.lec_arp_table*, %struct.lec_arp_table** %11, align 8
  %165 = getelementptr inbounds %struct.lec_arp_table, %struct.lec_arp_table* %164, i32 0, i32 4
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i32 0, i32 0
  store i32 %163, i32* %166, align 8
  %167 = load %struct.lec_arp_table*, %struct.lec_arp_table** %11, align 8
  %168 = getelementptr inbounds %struct.lec_arp_table, %struct.lec_arp_table* %167, i32 0, i32 4
  %169 = call i32 @add_timer(%struct.TYPE_2__* %168)
  %170 = load %struct.lec_priv*, %struct.lec_priv** %6, align 8
  %171 = getelementptr inbounds %struct.lec_priv, %struct.lec_priv* %170, i32 0, i32 3
  %172 = load %struct.atm_vcc*, %struct.atm_vcc** %171, align 8
  store %struct.atm_vcc* %172, %struct.atm_vcc** %12, align 8
  br label %173

173:                                              ; preds = %154, %98
  br label %174

174:                                              ; preds = %173, %117, %89, %55
  %175 = load %struct.lec_priv*, %struct.lec_priv** %6, align 8
  %176 = getelementptr inbounds %struct.lec_priv, %struct.lec_priv* %175, i32 0, i32 2
  %177 = load i64, i64* %10, align 8
  %178 = call i32 @spin_unlock_irqrestore(i32* %176, i64 %177)
  %179 = load %struct.atm_vcc*, %struct.atm_vcc** %12, align 8
  store %struct.atm_vcc* %179, %struct.atm_vcc** %5, align 8
  br label %180

180:                                              ; preds = %174, %32, %23
  %181 = load %struct.atm_vcc*, %struct.atm_vcc** %5, align 8
  ret %struct.atm_vcc* %181
}

declare dso_local i32 @ether_addr_equal(i8*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.lec_arp_table* @lec_arp_find(%struct.lec_priv*, i8*) #1

declare dso_local i32 @lec_arp_hold(%struct.lec_arp_table*) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local %struct.lec_arp_table* @make_entry(%struct.lec_priv*, i8*) #1

declare dso_local i32 @lec_arp_add(%struct.lec_priv*, %struct.lec_arp_table*) #1

declare dso_local i32 @send_to_lecd(%struct.lec_priv*, i32, i8*, i32*, i32*) #1

declare dso_local i32 @add_timer(%struct.TYPE_2__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

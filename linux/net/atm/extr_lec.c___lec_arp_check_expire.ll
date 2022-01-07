; ModuleID = '/home/carl/AnghaBench/linux/net/atm/extr_lec.c___lec_arp_check_expire.c'
source_filename = "/home/carl/AnghaBench/linux/net/atm/extr_lec.c___lec_arp_check_expire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lec_arp_table = type { i32, i32*, i64, i64, i32, i64, i64 }
%struct.lec_priv = type { i64, i64, i64, i64, i64 }

@LEC_REMOTE_FLAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"About to expire: %lx - %lx > %lx\0A\00", align 1
@LEC_PERMANENT_FLAG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"Entry timed out\0A\00", align 1
@ESI_VC_PENDING = common dso_local global i64 0, align 8
@ESI_ARP_PENDING = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@l_svc_setup = common dso_local global i32 0, align 4
@ESI_FLUSH_PENDING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lec_arp_table*, i64, %struct.lec_priv*)* @__lec_arp_check_expire to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__lec_arp_check_expire(%struct.lec_arp_table* %0, i64 %1, %struct.lec_priv* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lec_arp_table*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.lec_priv*, align 8
  %8 = alloca i64, align 8
  store %struct.lec_arp_table* %0, %struct.lec_arp_table** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.lec_priv* %2, %struct.lec_priv** %7, align 8
  %9 = load %struct.lec_arp_table*, %struct.lec_arp_table** %5, align 8
  %10 = getelementptr inbounds %struct.lec_arp_table, %struct.lec_arp_table* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @LEC_REMOTE_FLAG, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %3
  %16 = load %struct.lec_priv*, %struct.lec_priv** %7, align 8
  %17 = getelementptr inbounds %struct.lec_priv, %struct.lec_priv* %16, i32 0, i32 4
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = load %struct.lec_priv*, %struct.lec_priv** %7, align 8
  %22 = getelementptr inbounds %struct.lec_priv, %struct.lec_priv* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %8, align 8
  br label %28

24:                                               ; preds = %15, %3
  %25 = load %struct.lec_priv*, %struct.lec_priv** %7, align 8
  %26 = getelementptr inbounds %struct.lec_priv, %struct.lec_priv* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %8, align 8
  br label %28

28:                                               ; preds = %24, %20
  %29 = load i64, i64* %6, align 8
  %30 = load %struct.lec_arp_table*, %struct.lec_arp_table** %5, align 8
  %31 = getelementptr inbounds %struct.lec_arp_table, %struct.lec_arp_table* %30, i32 0, i32 6
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %8, align 8
  %34 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %29, i64 %32, i64 %33)
  %35 = load i64, i64* %6, align 8
  %36 = load %struct.lec_arp_table*, %struct.lec_arp_table** %5, align 8
  %37 = getelementptr inbounds %struct.lec_arp_table, %struct.lec_arp_table* %36, i32 0, i32 6
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %8, align 8
  %40 = add i64 %38, %39
  %41 = call i64 @time_after(i64 %35, i64 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %65

43:                                               ; preds = %28
  %44 = load %struct.lec_arp_table*, %struct.lec_arp_table** %5, align 8
  %45 = getelementptr inbounds %struct.lec_arp_table, %struct.lec_arp_table* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @LEC_PERMANENT_FLAG, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %65, label %50

50:                                               ; preds = %43
  %51 = load %struct.lec_arp_table*, %struct.lec_arp_table** %5, align 8
  %52 = getelementptr inbounds %struct.lec_arp_table, %struct.lec_arp_table* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, 1
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %65, label %58

58:                                               ; preds = %50
  %59 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %60 = load %struct.lec_priv*, %struct.lec_priv** %7, align 8
  %61 = load %struct.lec_arp_table*, %struct.lec_arp_table** %5, align 8
  %62 = call i32 @lec_arp_remove(%struct.lec_priv* %60, %struct.lec_arp_table* %61)
  %63 = load %struct.lec_arp_table*, %struct.lec_arp_table** %5, align 8
  %64 = call i32 @lec_arp_put(%struct.lec_arp_table* %63)
  br label %131

65:                                               ; preds = %50, %43, %28
  %66 = load %struct.lec_arp_table*, %struct.lec_arp_table** %5, align 8
  %67 = getelementptr inbounds %struct.lec_arp_table, %struct.lec_arp_table* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @ESI_VC_PENDING, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %77, label %71

71:                                               ; preds = %65
  %72 = load %struct.lec_arp_table*, %struct.lec_arp_table** %5, align 8
  %73 = getelementptr inbounds %struct.lec_arp_table, %struct.lec_arp_table* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @ESI_ARP_PENDING, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %110

77:                                               ; preds = %71, %65
  %78 = load i64, i64* %6, align 8
  %79 = load %struct.lec_arp_table*, %struct.lec_arp_table** %5, align 8
  %80 = getelementptr inbounds %struct.lec_arp_table, %struct.lec_arp_table* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.lec_priv*, %struct.lec_priv** %7, align 8
  %83 = getelementptr inbounds %struct.lec_priv, %struct.lec_priv* %82, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  %85 = add nsw i64 %81, %84
  %86 = call i64 @time_after_eq(i64 %78, i64 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %110

88:                                               ; preds = %77
  %89 = load i64, i64* @jiffies, align 8
  %90 = load %struct.lec_arp_table*, %struct.lec_arp_table** %5, align 8
  %91 = getelementptr inbounds %struct.lec_arp_table, %struct.lec_arp_table* %90, i32 0, i32 3
  store i64 %89, i64* %91, align 8
  %92 = load %struct.lec_arp_table*, %struct.lec_arp_table** %5, align 8
  %93 = getelementptr inbounds %struct.lec_arp_table, %struct.lec_arp_table* %92, i32 0, i32 5
  store i64 0, i64* %93, align 8
  %94 = load %struct.lec_arp_table*, %struct.lec_arp_table** %5, align 8
  %95 = getelementptr inbounds %struct.lec_arp_table, %struct.lec_arp_table* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @ESI_VC_PENDING, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %109

99:                                               ; preds = %88
  %100 = load %struct.lec_priv*, %struct.lec_priv** %7, align 8
  %101 = load i32, i32* @l_svc_setup, align 4
  %102 = load %struct.lec_arp_table*, %struct.lec_arp_table** %5, align 8
  %103 = getelementptr inbounds %struct.lec_arp_table, %struct.lec_arp_table* %102, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  %105 = load %struct.lec_arp_table*, %struct.lec_arp_table** %5, align 8
  %106 = getelementptr inbounds %struct.lec_arp_table, %struct.lec_arp_table* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @send_to_lecd(%struct.lec_priv* %100, i32 %101, i32* %104, i32 %107, i32* null)
  br label %109

109:                                              ; preds = %99, %88
  br label %110

110:                                              ; preds = %109, %77, %71
  %111 = load %struct.lec_arp_table*, %struct.lec_arp_table** %5, align 8
  %112 = getelementptr inbounds %struct.lec_arp_table, %struct.lec_arp_table* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @ESI_FLUSH_PENDING, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %130

116:                                              ; preds = %110
  %117 = load i64, i64* %6, align 8
  %118 = load %struct.lec_arp_table*, %struct.lec_arp_table** %5, align 8
  %119 = getelementptr inbounds %struct.lec_arp_table, %struct.lec_arp_table* %118, i32 0, i32 3
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.lec_priv*, %struct.lec_priv** %7, align 8
  %122 = getelementptr inbounds %struct.lec_priv, %struct.lec_priv* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = add nsw i64 %120, %123
  %125 = call i64 @time_after_eq(i64 %117, i64 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %116
  %128 = load %struct.lec_arp_table*, %struct.lec_arp_table** %5, align 8
  %129 = call i32 @lec_arp_hold(%struct.lec_arp_table* %128)
  store i32 1, i32* %4, align 4
  br label %132

130:                                              ; preds = %116, %110
  br label %131

131:                                              ; preds = %130, %58
  store i32 0, i32* %4, align 4
  br label %132

132:                                              ; preds = %131, %127
  %133 = load i32, i32* %4, align 4
  ret i32 %133
}

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @lec_arp_remove(%struct.lec_priv*, %struct.lec_arp_table*) #1

declare dso_local i32 @lec_arp_put(%struct.lec_arp_table*) #1

declare dso_local i64 @time_after_eq(i64, i64) #1

declare dso_local i32 @send_to_lecd(%struct.lec_priv*, i32, i32*, i32, i32*) #1

declare dso_local i32 @lec_arp_hold(%struct.lec_arp_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

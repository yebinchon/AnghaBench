; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/netfilter/extr_ebtables.c_ebt_check_match.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/netfilter/extr_ebtables.c_ebt_check_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ebt_entry_match = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.xt_match*, i32, i32 }
%struct.xt_match = type { i64, i32 }
%struct.xt_mtchk_param = type { i32, %struct.xt_match*, %struct.ebt_entry* }
%struct.ebt_entry = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@NFPROTO_BRIDGE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"ebt_%s\00", align 1
@EBT_IPROTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ebt_entry_match*, %struct.xt_mtchk_param*, i32*)* @ebt_check_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ebt_check_match(%struct.ebt_entry_match* %0, %struct.xt_mtchk_param* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ebt_entry_match*, align 8
  %6 = alloca %struct.xt_mtchk_param*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ebt_entry*, align 8
  %9 = alloca %struct.xt_match*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.ebt_entry_match* %0, %struct.ebt_entry_match** %5, align 8
  store %struct.xt_mtchk_param* %1, %struct.xt_mtchk_param** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %6, align 8
  %13 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %12, i32 0, i32 2
  %14 = load %struct.ebt_entry*, %struct.ebt_entry** %13, align 8
  store %struct.ebt_entry* %14, %struct.ebt_entry** %8, align 8
  %15 = load %struct.ebt_entry*, %struct.ebt_entry** %8, align 8
  %16 = bitcast %struct.ebt_entry* %15 to i8*
  %17 = load %struct.ebt_entry*, %struct.ebt_entry** %8, align 8
  %18 = getelementptr inbounds %struct.ebt_entry, %struct.ebt_entry* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %16, i64 %20
  %22 = load %struct.ebt_entry_match*, %struct.ebt_entry_match** %5, align 8
  %23 = bitcast %struct.ebt_entry_match* %22 to i8*
  %24 = ptrtoint i8* %21 to i64
  %25 = ptrtoint i8* %23 to i64
  %26 = sub i64 %24, %25
  store i64 %26, i64* %10, align 8
  %27 = load i64, i64* %10, align 8
  %28 = icmp ult i64 %27, 32
  br i1 %28, label %36, label %29

29:                                               ; preds = %3
  %30 = load i64, i64* %10, align 8
  %31 = sub i64 %30, 32
  %32 = load %struct.ebt_entry_match*, %struct.ebt_entry_match** %5, align 8
  %33 = getelementptr inbounds %struct.ebt_entry_match, %struct.ebt_entry_match* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ult i64 %31, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %29, %3
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %130

39:                                               ; preds = %29
  %40 = load i64, i64* @NFPROTO_BRIDGE, align 8
  %41 = load %struct.ebt_entry_match*, %struct.ebt_entry_match** %5, align 8
  %42 = getelementptr inbounds %struct.ebt_entry_match, %struct.ebt_entry_match* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.ebt_entry_match*, %struct.ebt_entry_match** %5, align 8
  %46 = getelementptr inbounds %struct.ebt_entry_match, %struct.ebt_entry_match* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call %struct.xt_match* @xt_find_match(i64 %40, i32 %44, i32 %48)
  store %struct.xt_match* %49, %struct.xt_match** %9, align 8
  %50 = load %struct.xt_match*, %struct.xt_match** %9, align 8
  %51 = call i64 @IS_ERR(%struct.xt_match* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %39
  %54 = load %struct.xt_match*, %struct.xt_match** %9, align 8
  %55 = getelementptr inbounds %struct.xt_match, %struct.xt_match* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @NFPROTO_BRIDGE, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %84

59:                                               ; preds = %53, %39
  %60 = load %struct.xt_match*, %struct.xt_match** %9, align 8
  %61 = call i64 @IS_ERR(%struct.xt_match* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %59
  %64 = load %struct.xt_match*, %struct.xt_match** %9, align 8
  %65 = getelementptr inbounds %struct.xt_match, %struct.xt_match* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @module_put(i32 %66)
  br label %68

68:                                               ; preds = %63, %59
  %69 = load %struct.ebt_entry_match*, %struct.ebt_entry_match** %5, align 8
  %70 = getelementptr inbounds %struct.ebt_entry_match, %struct.ebt_entry_match* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @request_module(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %72)
  %74 = load i64, i64* @NFPROTO_BRIDGE, align 8
  %75 = load %struct.ebt_entry_match*, %struct.ebt_entry_match** %5, align 8
  %76 = getelementptr inbounds %struct.ebt_entry_match, %struct.ebt_entry_match* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.ebt_entry_match*, %struct.ebt_entry_match** %5, align 8
  %80 = getelementptr inbounds %struct.ebt_entry_match, %struct.ebt_entry_match* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = call %struct.xt_match* @xt_find_match(i64 %74, i32 %78, i32 %82)
  store %struct.xt_match* %83, %struct.xt_match** %9, align 8
  br label %84

84:                                               ; preds = %68, %53
  %85 = load %struct.xt_match*, %struct.xt_match** %9, align 8
  %86 = call i64 @IS_ERR(%struct.xt_match* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %84
  %89 = load %struct.xt_match*, %struct.xt_match** %9, align 8
  %90 = call i32 @PTR_ERR(%struct.xt_match* %89)
  store i32 %90, i32* %4, align 4
  br label %130

91:                                               ; preds = %84
  %92 = load %struct.xt_match*, %struct.xt_match** %9, align 8
  %93 = load %struct.ebt_entry_match*, %struct.ebt_entry_match** %5, align 8
  %94 = getelementptr inbounds %struct.ebt_entry_match, %struct.ebt_entry_match* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  store %struct.xt_match* %92, %struct.xt_match** %95, align 8
  %96 = load %struct.xt_match*, %struct.xt_match** %9, align 8
  %97 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %6, align 8
  %98 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %97, i32 0, i32 1
  store %struct.xt_match* %96, %struct.xt_match** %98, align 8
  %99 = load %struct.ebt_entry_match*, %struct.ebt_entry_match** %5, align 8
  %100 = getelementptr inbounds %struct.ebt_entry_match, %struct.ebt_entry_match* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %6, align 8
  %103 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 8
  %104 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %6, align 8
  %105 = load %struct.ebt_entry_match*, %struct.ebt_entry_match** %5, align 8
  %106 = getelementptr inbounds %struct.ebt_entry_match, %struct.ebt_entry_match* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.ebt_entry*, %struct.ebt_entry** %8, align 8
  %109 = getelementptr inbounds %struct.ebt_entry, %struct.ebt_entry* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @ntohs(i32 %110)
  %112 = load %struct.ebt_entry*, %struct.ebt_entry** %8, align 8
  %113 = getelementptr inbounds %struct.ebt_entry, %struct.ebt_entry* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @EBT_IPROTO, align 4
  %116 = and i32 %114, %115
  %117 = call i32 @xt_check_match(%struct.xt_mtchk_param* %104, i64 %107, i32 %111, i32 %116)
  store i32 %117, i32* %11, align 4
  %118 = load i32, i32* %11, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %126

120:                                              ; preds = %91
  %121 = load %struct.xt_match*, %struct.xt_match** %9, align 8
  %122 = getelementptr inbounds %struct.xt_match, %struct.xt_match* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @module_put(i32 %123)
  %125 = load i32, i32* %11, align 4
  store i32 %125, i32* %4, align 4
  br label %130

126:                                              ; preds = %91
  %127 = load i32*, i32** %7, align 8
  %128 = load i32, i32* %127, align 4
  %129 = add i32 %128, 1
  store i32 %129, i32* %127, align 4
  store i32 0, i32* %4, align 4
  br label %130

130:                                              ; preds = %126, %120, %88, %36
  %131 = load i32, i32* %4, align 4
  ret i32 %131
}

declare dso_local %struct.xt_match* @xt_find_match(i64, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.xt_match*) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @request_module(i8*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.xt_match*) #1

declare dso_local i32 @xt_check_match(%struct.xt_mtchk_param*, i64, i32, i32) #1

declare dso_local i32 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

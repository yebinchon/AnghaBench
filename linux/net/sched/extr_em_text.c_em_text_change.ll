; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_em_text.c_em_text_change.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_em_text.c_em_text_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.tcf_ematch = type { i32, i64 }
%struct.text_match = type { i64, i64, i64, i64, %struct.ts_config* }
%struct.ts_config = type { i32 }
%struct.tcf_em_text = type { i32, i64, i64, i64, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@TS_AUTOLOAD = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, i8*, i32, %struct.tcf_ematch*)* @em_text_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @em_text_change(%struct.net* %0, i8* %1, i32 %2, %struct.tcf_ematch* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.tcf_ematch*, align 8
  %10 = alloca %struct.text_match*, align 8
  %11 = alloca %struct.tcf_em_text*, align 8
  %12 = alloca %struct.ts_config*, align 8
  %13 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.tcf_ematch* %3, %struct.tcf_ematch** %9, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = bitcast i8* %14 to %struct.tcf_em_text*
  store %struct.tcf_em_text* %15, %struct.tcf_em_text** %11, align 8
  store i32 0, i32* %13, align 4
  %16 = load i32, i32* %8, align 4
  %17 = sext i32 %16 to i64
  %18 = icmp ult i64 %17, 48
  br i1 %18, label %28, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = load %struct.tcf_em_text*, %struct.tcf_em_text** %11, align 8
  %23 = getelementptr inbounds %struct.tcf_em_text, %struct.tcf_em_text* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = add i64 48, %25
  %27 = icmp ult i64 %21, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %19, %4
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %155

31:                                               ; preds = %19
  %32 = load %struct.tcf_em_text*, %struct.tcf_em_text** %11, align 8
  %33 = getelementptr inbounds %struct.tcf_em_text, %struct.tcf_em_text* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.tcf_em_text*, %struct.tcf_em_text** %11, align 8
  %36 = getelementptr inbounds %struct.tcf_em_text, %struct.tcf_em_text* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp sgt i64 %34, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %31
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %155

42:                                               ; preds = %31
  %43 = load %struct.tcf_em_text*, %struct.tcf_em_text** %11, align 8
  %44 = getelementptr inbounds %struct.tcf_em_text, %struct.tcf_em_text* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.tcf_em_text*, %struct.tcf_em_text** %11, align 8
  %47 = getelementptr inbounds %struct.tcf_em_text, %struct.tcf_em_text* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %45, %48
  br i1 %49, label %50, label %61

50:                                               ; preds = %42
  %51 = load %struct.tcf_em_text*, %struct.tcf_em_text** %11, align 8
  %52 = getelementptr inbounds %struct.tcf_em_text, %struct.tcf_em_text* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.tcf_em_text*, %struct.tcf_em_text** %11, align 8
  %55 = getelementptr inbounds %struct.tcf_em_text, %struct.tcf_em_text* %54, i32 0, i32 4
  %56 = load i64, i64* %55, align 8
  %57 = icmp sgt i64 %53, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %50
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %5, align 4
  br label %155

61:                                               ; preds = %50, %42
  br label %62

62:                                               ; preds = %96, %61
  %63 = load %struct.tcf_em_text*, %struct.tcf_em_text** %11, align 8
  %64 = getelementptr inbounds %struct.tcf_em_text, %struct.tcf_em_text* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.tcf_em_text*, %struct.tcf_em_text** %11, align 8
  %67 = bitcast %struct.tcf_em_text* %66 to i32*
  %68 = getelementptr inbounds i32, i32* %67, i64 48
  %69 = load %struct.tcf_em_text*, %struct.tcf_em_text** %11, align 8
  %70 = getelementptr inbounds %struct.tcf_em_text, %struct.tcf_em_text* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @GFP_KERNEL, align 4
  %73 = load i32, i32* %13, align 4
  %74 = call %struct.ts_config* @textsearch_prepare(i32 %65, i32* %68, i32 %71, i32 %72, i32 %73)
  store %struct.ts_config* %74, %struct.ts_config** %12, align 8
  %75 = load i32, i32* %13, align 4
  %76 = load i32, i32* @TS_AUTOLOAD, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %62
  %80 = call i32 (...) @rtnl_lock()
  br label %81

81:                                               ; preds = %79, %62
  %82 = load %struct.ts_config*, %struct.ts_config** %12, align 8
  %83 = call i64 @IS_ERR(%struct.ts_config* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %104

85:                                               ; preds = %81
  %86 = load %struct.ts_config*, %struct.ts_config** %12, align 8
  %87 = call i32 @PTR_ERR(%struct.ts_config* %86)
  %88 = load i32, i32* @ENOENT, align 4
  %89 = sub nsw i32 0, %88
  %90 = icmp eq i32 %87, %89
  br i1 %90, label %91, label %101

91:                                               ; preds = %85
  %92 = load i32, i32* %13, align 4
  %93 = load i32, i32* @TS_AUTOLOAD, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %101, label %96

96:                                               ; preds = %91
  %97 = call i32 (...) @rtnl_unlock()
  %98 = load i32, i32* @TS_AUTOLOAD, align 4
  %99 = load i32, i32* %13, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %13, align 4
  br label %62

101:                                              ; preds = %91, %85
  %102 = load %struct.ts_config*, %struct.ts_config** %12, align 8
  %103 = call i32 @PTR_ERR(%struct.ts_config* %102)
  store i32 %103, i32* %5, align 4
  br label %155

104:                                              ; preds = %81
  %105 = load i32, i32* %13, align 4
  %106 = load i32, i32* @TS_AUTOLOAD, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %104
  %110 = load %struct.ts_config*, %struct.ts_config** %12, align 8
  %111 = call i32 @textsearch_destroy(%struct.ts_config* %110)
  %112 = load i32, i32* @EAGAIN, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %5, align 4
  br label %155

114:                                              ; preds = %104
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* @GFP_KERNEL, align 4
  %117 = call %struct.text_match* @kmalloc(i32 40, i32 %116)
  store %struct.text_match* %117, %struct.text_match** %10, align 8
  %118 = load %struct.text_match*, %struct.text_match** %10, align 8
  %119 = icmp eq %struct.text_match* %118, null
  br i1 %119, label %120, label %125

120:                                              ; preds = %115
  %121 = load %struct.ts_config*, %struct.ts_config** %12, align 8
  %122 = call i32 @textsearch_destroy(%struct.ts_config* %121)
  %123 = load i32, i32* @ENOBUFS, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %5, align 4
  br label %155

125:                                              ; preds = %115
  %126 = load %struct.tcf_em_text*, %struct.tcf_em_text** %11, align 8
  %127 = getelementptr inbounds %struct.tcf_em_text, %struct.tcf_em_text* %126, i32 0, i32 3
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.text_match*, %struct.text_match** %10, align 8
  %130 = getelementptr inbounds %struct.text_match, %struct.text_match* %129, i32 0, i32 0
  store i64 %128, i64* %130, align 8
  %131 = load %struct.tcf_em_text*, %struct.tcf_em_text** %11, align 8
  %132 = getelementptr inbounds %struct.tcf_em_text, %struct.tcf_em_text* %131, i32 0, i32 4
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.text_match*, %struct.text_match** %10, align 8
  %135 = getelementptr inbounds %struct.text_match, %struct.text_match* %134, i32 0, i32 1
  store i64 %133, i64* %135, align 8
  %136 = load %struct.tcf_em_text*, %struct.tcf_em_text** %11, align 8
  %137 = getelementptr inbounds %struct.tcf_em_text, %struct.tcf_em_text* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.text_match*, %struct.text_match** %10, align 8
  %140 = getelementptr inbounds %struct.text_match, %struct.text_match* %139, i32 0, i32 2
  store i64 %138, i64* %140, align 8
  %141 = load %struct.tcf_em_text*, %struct.tcf_em_text** %11, align 8
  %142 = getelementptr inbounds %struct.tcf_em_text, %struct.tcf_em_text* %141, i32 0, i32 2
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.text_match*, %struct.text_match** %10, align 8
  %145 = getelementptr inbounds %struct.text_match, %struct.text_match* %144, i32 0, i32 3
  store i64 %143, i64* %145, align 8
  %146 = load %struct.ts_config*, %struct.ts_config** %12, align 8
  %147 = load %struct.text_match*, %struct.text_match** %10, align 8
  %148 = getelementptr inbounds %struct.text_match, %struct.text_match* %147, i32 0, i32 4
  store %struct.ts_config* %146, %struct.ts_config** %148, align 8
  %149 = load %struct.tcf_ematch*, %struct.tcf_ematch** %9, align 8
  %150 = getelementptr inbounds %struct.tcf_ematch, %struct.tcf_ematch* %149, i32 0, i32 0
  store i32 40, i32* %150, align 8
  %151 = load %struct.text_match*, %struct.text_match** %10, align 8
  %152 = ptrtoint %struct.text_match* %151 to i64
  %153 = load %struct.tcf_ematch*, %struct.tcf_ematch** %9, align 8
  %154 = getelementptr inbounds %struct.tcf_ematch, %struct.tcf_ematch* %153, i32 0, i32 1
  store i64 %152, i64* %154, align 8
  store i32 0, i32* %5, align 4
  br label %155

155:                                              ; preds = %125, %120, %109, %101, %58, %39, %28
  %156 = load i32, i32* %5, align 4
  ret i32 %156
}

declare dso_local %struct.ts_config* @textsearch_prepare(i32, i32*, i32, i32, i32) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i64 @IS_ERR(%struct.ts_config*) #1

declare dso_local i32 @PTR_ERR(%struct.ts_config*) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @textsearch_destroy(%struct.ts_config*) #1

declare dso_local %struct.text_match* @kmalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

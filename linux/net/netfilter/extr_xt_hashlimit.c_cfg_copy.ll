; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_hashlimit.c_cfg_copy.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_hashlimit.c_cfg_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hashlimit_cfg3 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hashlimit_cfg1 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hashlimit_cfg2 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hashlimit_cfg3*, i8*, i32)* @cfg_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfg_copy(%struct.hashlimit_cfg3* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hashlimit_cfg3*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.hashlimit_cfg1*, align 8
  %9 = alloca %struct.hashlimit_cfg2*, align 8
  store %struct.hashlimit_cfg3* %0, %struct.hashlimit_cfg3** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %60

12:                                               ; preds = %3
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.hashlimit_cfg1*
  store %struct.hashlimit_cfg1* %14, %struct.hashlimit_cfg1** %8, align 8
  %15 = load %struct.hashlimit_cfg1*, %struct.hashlimit_cfg1** %8, align 8
  %16 = getelementptr inbounds %struct.hashlimit_cfg1, %struct.hashlimit_cfg1* %15, i32 0, i32 8
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.hashlimit_cfg3*, %struct.hashlimit_cfg3** %5, align 8
  %19 = getelementptr inbounds %struct.hashlimit_cfg3, %struct.hashlimit_cfg3* %18, i32 0, i32 8
  store i32 %17, i32* %19, align 4
  %20 = load %struct.hashlimit_cfg1*, %struct.hashlimit_cfg1** %8, align 8
  %21 = getelementptr inbounds %struct.hashlimit_cfg1, %struct.hashlimit_cfg1* %20, i32 0, i32 7
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.hashlimit_cfg3*, %struct.hashlimit_cfg3** %5, align 8
  %24 = getelementptr inbounds %struct.hashlimit_cfg3, %struct.hashlimit_cfg3* %23, i32 0, i32 7
  store i32 %22, i32* %24, align 4
  %25 = load %struct.hashlimit_cfg1*, %struct.hashlimit_cfg1** %8, align 8
  %26 = getelementptr inbounds %struct.hashlimit_cfg1, %struct.hashlimit_cfg1* %25, i32 0, i32 6
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.hashlimit_cfg3*, %struct.hashlimit_cfg3** %5, align 8
  %29 = getelementptr inbounds %struct.hashlimit_cfg3, %struct.hashlimit_cfg3* %28, i32 0, i32 6
  store i32 %27, i32* %29, align 4
  %30 = load %struct.hashlimit_cfg1*, %struct.hashlimit_cfg1** %8, align 8
  %31 = getelementptr inbounds %struct.hashlimit_cfg1, %struct.hashlimit_cfg1* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.hashlimit_cfg3*, %struct.hashlimit_cfg3** %5, align 8
  %34 = getelementptr inbounds %struct.hashlimit_cfg3, %struct.hashlimit_cfg3* %33, i32 0, i32 5
  store i32 %32, i32* %34, align 4
  %35 = load %struct.hashlimit_cfg1*, %struct.hashlimit_cfg1** %8, align 8
  %36 = getelementptr inbounds %struct.hashlimit_cfg1, %struct.hashlimit_cfg1* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.hashlimit_cfg3*, %struct.hashlimit_cfg3** %5, align 8
  %39 = getelementptr inbounds %struct.hashlimit_cfg3, %struct.hashlimit_cfg3* %38, i32 0, i32 4
  store i32 %37, i32* %39, align 4
  %40 = load %struct.hashlimit_cfg1*, %struct.hashlimit_cfg1** %8, align 8
  %41 = getelementptr inbounds %struct.hashlimit_cfg1, %struct.hashlimit_cfg1* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.hashlimit_cfg3*, %struct.hashlimit_cfg3** %5, align 8
  %44 = getelementptr inbounds %struct.hashlimit_cfg3, %struct.hashlimit_cfg3* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 4
  %45 = load %struct.hashlimit_cfg1*, %struct.hashlimit_cfg1** %8, align 8
  %46 = getelementptr inbounds %struct.hashlimit_cfg1, %struct.hashlimit_cfg1* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.hashlimit_cfg3*, %struct.hashlimit_cfg3** %5, align 8
  %49 = getelementptr inbounds %struct.hashlimit_cfg3, %struct.hashlimit_cfg3* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 4
  %50 = load %struct.hashlimit_cfg1*, %struct.hashlimit_cfg1** %8, align 8
  %51 = getelementptr inbounds %struct.hashlimit_cfg1, %struct.hashlimit_cfg1* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.hashlimit_cfg3*, %struct.hashlimit_cfg3** %5, align 8
  %54 = getelementptr inbounds %struct.hashlimit_cfg3, %struct.hashlimit_cfg3* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load %struct.hashlimit_cfg1*, %struct.hashlimit_cfg1** %8, align 8
  %56 = getelementptr inbounds %struct.hashlimit_cfg1, %struct.hashlimit_cfg1* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.hashlimit_cfg3*, %struct.hashlimit_cfg3** %5, align 8
  %59 = getelementptr inbounds %struct.hashlimit_cfg3, %struct.hashlimit_cfg3* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  br label %123

60:                                               ; preds = %3
  %61 = load i32, i32* %7, align 4
  %62 = icmp eq i32 %61, 2
  br i1 %62, label %63, label %111

63:                                               ; preds = %60
  %64 = load i8*, i8** %6, align 8
  %65 = bitcast i8* %64 to %struct.hashlimit_cfg2*
  store %struct.hashlimit_cfg2* %65, %struct.hashlimit_cfg2** %9, align 8
  %66 = load %struct.hashlimit_cfg2*, %struct.hashlimit_cfg2** %9, align 8
  %67 = getelementptr inbounds %struct.hashlimit_cfg2, %struct.hashlimit_cfg2* %66, i32 0, i32 8
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.hashlimit_cfg3*, %struct.hashlimit_cfg3** %5, align 8
  %70 = getelementptr inbounds %struct.hashlimit_cfg3, %struct.hashlimit_cfg3* %69, i32 0, i32 8
  store i32 %68, i32* %70, align 4
  %71 = load %struct.hashlimit_cfg2*, %struct.hashlimit_cfg2** %9, align 8
  %72 = getelementptr inbounds %struct.hashlimit_cfg2, %struct.hashlimit_cfg2* %71, i32 0, i32 7
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.hashlimit_cfg3*, %struct.hashlimit_cfg3** %5, align 8
  %75 = getelementptr inbounds %struct.hashlimit_cfg3, %struct.hashlimit_cfg3* %74, i32 0, i32 7
  store i32 %73, i32* %75, align 4
  %76 = load %struct.hashlimit_cfg2*, %struct.hashlimit_cfg2** %9, align 8
  %77 = getelementptr inbounds %struct.hashlimit_cfg2, %struct.hashlimit_cfg2* %76, i32 0, i32 6
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.hashlimit_cfg3*, %struct.hashlimit_cfg3** %5, align 8
  %80 = getelementptr inbounds %struct.hashlimit_cfg3, %struct.hashlimit_cfg3* %79, i32 0, i32 6
  store i32 %78, i32* %80, align 4
  %81 = load %struct.hashlimit_cfg2*, %struct.hashlimit_cfg2** %9, align 8
  %82 = getelementptr inbounds %struct.hashlimit_cfg2, %struct.hashlimit_cfg2* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.hashlimit_cfg3*, %struct.hashlimit_cfg3** %5, align 8
  %85 = getelementptr inbounds %struct.hashlimit_cfg3, %struct.hashlimit_cfg3* %84, i32 0, i32 5
  store i32 %83, i32* %85, align 4
  %86 = load %struct.hashlimit_cfg2*, %struct.hashlimit_cfg2** %9, align 8
  %87 = getelementptr inbounds %struct.hashlimit_cfg2, %struct.hashlimit_cfg2* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.hashlimit_cfg3*, %struct.hashlimit_cfg3** %5, align 8
  %90 = getelementptr inbounds %struct.hashlimit_cfg3, %struct.hashlimit_cfg3* %89, i32 0, i32 4
  store i32 %88, i32* %90, align 4
  %91 = load %struct.hashlimit_cfg2*, %struct.hashlimit_cfg2** %9, align 8
  %92 = getelementptr inbounds %struct.hashlimit_cfg2, %struct.hashlimit_cfg2* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.hashlimit_cfg3*, %struct.hashlimit_cfg3** %5, align 8
  %95 = getelementptr inbounds %struct.hashlimit_cfg3, %struct.hashlimit_cfg3* %94, i32 0, i32 3
  store i32 %93, i32* %95, align 4
  %96 = load %struct.hashlimit_cfg2*, %struct.hashlimit_cfg2** %9, align 8
  %97 = getelementptr inbounds %struct.hashlimit_cfg2, %struct.hashlimit_cfg2* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.hashlimit_cfg3*, %struct.hashlimit_cfg3** %5, align 8
  %100 = getelementptr inbounds %struct.hashlimit_cfg3, %struct.hashlimit_cfg3* %99, i32 0, i32 2
  store i32 %98, i32* %100, align 4
  %101 = load %struct.hashlimit_cfg2*, %struct.hashlimit_cfg2** %9, align 8
  %102 = getelementptr inbounds %struct.hashlimit_cfg2, %struct.hashlimit_cfg2* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.hashlimit_cfg3*, %struct.hashlimit_cfg3** %5, align 8
  %105 = getelementptr inbounds %struct.hashlimit_cfg3, %struct.hashlimit_cfg3* %104, i32 0, i32 1
  store i32 %103, i32* %105, align 4
  %106 = load %struct.hashlimit_cfg2*, %struct.hashlimit_cfg2** %9, align 8
  %107 = getelementptr inbounds %struct.hashlimit_cfg2, %struct.hashlimit_cfg2* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.hashlimit_cfg3*, %struct.hashlimit_cfg3** %5, align 8
  %110 = getelementptr inbounds %struct.hashlimit_cfg3, %struct.hashlimit_cfg3* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 4
  br label %122

111:                                              ; preds = %60
  %112 = load i32, i32* %7, align 4
  %113 = icmp eq i32 %112, 3
  br i1 %113, label %114, label %118

114:                                              ; preds = %111
  %115 = load %struct.hashlimit_cfg3*, %struct.hashlimit_cfg3** %5, align 8
  %116 = load i8*, i8** %6, align 8
  %117 = call i32 @memcpy(%struct.hashlimit_cfg3* %115, i8* %116, i32 36)
  br label %121

118:                                              ; preds = %111
  %119 = load i32, i32* @EINVAL, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %4, align 4
  br label %124

121:                                              ; preds = %114
  br label %122

122:                                              ; preds = %121, %63
  br label %123

123:                                              ; preds = %122, %12
  store i32 0, i32* %4, align 4
  br label %124

124:                                              ; preds = %123, %118
  %125 = load i32, i32* %4, align 4
  ret i32 %125
}

declare dso_local i32 @memcpy(%struct.hashlimit_cfg3*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

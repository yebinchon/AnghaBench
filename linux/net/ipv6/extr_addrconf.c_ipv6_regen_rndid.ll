; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_addrconf.c_ipv6_regen_rndid.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_addrconf.c_ipv6_regen_rndid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet6_dev = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inet6_dev*)* @ipv6_regen_rndid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipv6_regen_rndid(%struct.inet6_dev* %0) #0 {
  %2 = alloca %struct.inet6_dev*, align 8
  store %struct.inet6_dev* %0, %struct.inet6_dev** %2, align 8
  br label %3

3:                                                ; preds = %131, %93, %65, %1
  %4 = load %struct.inet6_dev*, %struct.inet6_dev** %2, align 8
  %5 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %4, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  %7 = call i32 @get_random_bytes(i32* %6, i32 8)
  %8 = load %struct.inet6_dev*, %struct.inet6_dev** %2, align 8
  %9 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  %13 = and i32 %12, -3
  store i32 %13, i32* %11, align 4
  %14 = load %struct.inet6_dev*, %struct.inet6_dev** %2, align 8
  %15 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, 253
  br i1 %19, label %20, label %66

20:                                               ; preds = %3
  %21 = load %struct.inet6_dev*, %struct.inet6_dev** %2, align 8
  %22 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.inet6_dev*, %struct.inet6_dev** %2, align 8
  %27 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 2
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %25, %30
  %32 = load %struct.inet6_dev*, %struct.inet6_dev** %2, align 8
  %33 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 3
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %31, %36
  %38 = load %struct.inet6_dev*, %struct.inet6_dev** %2, align 8
  %39 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 4
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %37, %42
  %44 = load %struct.inet6_dev*, %struct.inet6_dev** %2, align 8
  %45 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 5
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %43, %48
  %50 = load %struct.inet6_dev*, %struct.inet6_dev** %2, align 8
  %51 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 6
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %49, %54
  %56 = icmp eq i32 %55, 255
  br i1 %56, label %57, label %66

57:                                               ; preds = %20
  %58 = load %struct.inet6_dev*, %struct.inet6_dev** %2, align 8
  %59 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 7
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %62, 128
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %57
  br label %3

66:                                               ; preds = %57, %20, %3
  %67 = load %struct.inet6_dev*, %struct.inet6_dev** %2, align 8
  %68 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.inet6_dev*, %struct.inet6_dev** %2, align 8
  %73 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 1
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %71, %76
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %133

79:                                               ; preds = %66
  %80 = load %struct.inet6_dev*, %struct.inet6_dev** %2, align 8
  %81 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 2
  %84 = load i32, i32* %83, align 4
  %85 = icmp eq i32 %84, 94
  br i1 %85, label %86, label %94

86:                                               ; preds = %79
  %87 = load %struct.inet6_dev*, %struct.inet6_dev** %2, align 8
  %88 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 3
  %91 = load i32, i32* %90, align 4
  %92 = icmp eq i32 %91, 254
  br i1 %92, label %93, label %94

93:                                               ; preds = %86
  br label %3

94:                                               ; preds = %86, %79
  %95 = load %struct.inet6_dev*, %struct.inet6_dev** %2, align 8
  %96 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 2
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.inet6_dev*, %struct.inet6_dev** %2, align 8
  %101 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 3
  %104 = load i32, i32* %103, align 4
  %105 = or i32 %99, %104
  %106 = load %struct.inet6_dev*, %struct.inet6_dev** %2, align 8
  %107 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 4
  %110 = load i32, i32* %109, align 4
  %111 = or i32 %105, %110
  %112 = load %struct.inet6_dev*, %struct.inet6_dev** %2, align 8
  %113 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 5
  %116 = load i32, i32* %115, align 4
  %117 = or i32 %111, %116
  %118 = load %struct.inet6_dev*, %struct.inet6_dev** %2, align 8
  %119 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 6
  %122 = load i32, i32* %121, align 4
  %123 = or i32 %117, %122
  %124 = load %struct.inet6_dev*, %struct.inet6_dev** %2, align 8
  %125 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 7
  %128 = load i32, i32* %127, align 4
  %129 = or i32 %123, %128
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %94
  br label %3

132:                                              ; preds = %94
  br label %133

133:                                              ; preds = %132, %66
  ret void
}

declare dso_local i32 @get_random_bytes(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

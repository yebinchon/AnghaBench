; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_resource.c___insert_resource.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_resource.c___insert_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i64, i64, %struct.resource*, %struct.resource*, %struct.resource* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.resource* (%struct.resource*, %struct.resource*)* @__insert_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.resource* @__insert_resource(%struct.resource* %0, %struct.resource* %1) #0 {
  %3 = alloca %struct.resource*, align 8
  %4 = alloca %struct.resource*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca %struct.resource*, align 8
  store %struct.resource* %0, %struct.resource** %4, align 8
  store %struct.resource* %1, %struct.resource** %5, align 8
  br label %8

8:                                                ; preds = %66, %2
  %9 = load %struct.resource*, %struct.resource** %4, align 8
  %10 = load %struct.resource*, %struct.resource** %5, align 8
  %11 = call %struct.resource* @__request_resource(%struct.resource* %9, %struct.resource* %10)
  store %struct.resource* %11, %struct.resource** %6, align 8
  %12 = load %struct.resource*, %struct.resource** %6, align 8
  %13 = icmp ne %struct.resource* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %8
  %15 = load %struct.resource*, %struct.resource** %6, align 8
  store %struct.resource* %15, %struct.resource** %3, align 8
  br label %165

16:                                               ; preds = %8
  %17 = load %struct.resource*, %struct.resource** %6, align 8
  %18 = load %struct.resource*, %struct.resource** %4, align 8
  %19 = icmp eq %struct.resource* %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load %struct.resource*, %struct.resource** %6, align 8
  store %struct.resource* %21, %struct.resource** %3, align 8
  br label %165

22:                                               ; preds = %16
  %23 = load %struct.resource*, %struct.resource** %6, align 8
  %24 = load %struct.resource*, %struct.resource** %5, align 8
  %25 = icmp eq %struct.resource* %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i64 @WARN_ON(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load %struct.resource*, %struct.resource** %6, align 8
  store %struct.resource* %30, %struct.resource** %3, align 8
  br label %165

31:                                               ; preds = %22
  %32 = load %struct.resource*, %struct.resource** %6, align 8
  %33 = getelementptr inbounds %struct.resource, %struct.resource* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.resource*, %struct.resource** %5, align 8
  %36 = getelementptr inbounds %struct.resource, %struct.resource* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp sgt i64 %34, %37
  br i1 %38, label %47, label %39

39:                                               ; preds = %31
  %40 = load %struct.resource*, %struct.resource** %6, align 8
  %41 = getelementptr inbounds %struct.resource, %struct.resource* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.resource*, %struct.resource** %5, align 8
  %44 = getelementptr inbounds %struct.resource, %struct.resource* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp slt i64 %42, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %39, %31
  br label %68

48:                                               ; preds = %39
  %49 = load %struct.resource*, %struct.resource** %6, align 8
  %50 = getelementptr inbounds %struct.resource, %struct.resource* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.resource*, %struct.resource** %5, align 8
  %53 = getelementptr inbounds %struct.resource, %struct.resource* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %51, %54
  br i1 %55, label %56, label %65

56:                                               ; preds = %48
  %57 = load %struct.resource*, %struct.resource** %6, align 8
  %58 = getelementptr inbounds %struct.resource, %struct.resource* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.resource*, %struct.resource** %5, align 8
  %61 = getelementptr inbounds %struct.resource, %struct.resource* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %59, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %56
  br label %68

65:                                               ; preds = %56, %48
  br label %66

66:                                               ; preds = %65
  %67 = load %struct.resource*, %struct.resource** %6, align 8
  store %struct.resource* %67, %struct.resource** %4, align 8
  br label %8

68:                                               ; preds = %64, %47
  %69 = load %struct.resource*, %struct.resource** %6, align 8
  store %struct.resource* %69, %struct.resource** %7, align 8
  br label %70

70:                                               ; preds = %106, %68
  %71 = load %struct.resource*, %struct.resource** %7, align 8
  %72 = getelementptr inbounds %struct.resource, %struct.resource* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.resource*, %struct.resource** %5, align 8
  %75 = getelementptr inbounds %struct.resource, %struct.resource* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp slt i64 %73, %76
  br i1 %77, label %86, label %78

78:                                               ; preds = %70
  %79 = load %struct.resource*, %struct.resource** %7, align 8
  %80 = getelementptr inbounds %struct.resource, %struct.resource* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.resource*, %struct.resource** %5, align 8
  %83 = getelementptr inbounds %struct.resource, %struct.resource* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = icmp sgt i64 %81, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %78, %70
  %87 = load %struct.resource*, %struct.resource** %7, align 8
  store %struct.resource* %87, %struct.resource** %3, align 8
  br label %165

88:                                               ; preds = %78
  %89 = load %struct.resource*, %struct.resource** %7, align 8
  %90 = getelementptr inbounds %struct.resource, %struct.resource* %89, i32 0, i32 2
  %91 = load %struct.resource*, %struct.resource** %90, align 8
  %92 = icmp ne %struct.resource* %91, null
  br i1 %92, label %94, label %93

93:                                               ; preds = %88
  br label %110

94:                                               ; preds = %88
  %95 = load %struct.resource*, %struct.resource** %7, align 8
  %96 = getelementptr inbounds %struct.resource, %struct.resource* %95, i32 0, i32 2
  %97 = load %struct.resource*, %struct.resource** %96, align 8
  %98 = getelementptr inbounds %struct.resource, %struct.resource* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.resource*, %struct.resource** %5, align 8
  %101 = getelementptr inbounds %struct.resource, %struct.resource* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = icmp sgt i64 %99, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %94
  br label %110

105:                                              ; preds = %94
  br label %106

106:                                              ; preds = %105
  %107 = load %struct.resource*, %struct.resource** %7, align 8
  %108 = getelementptr inbounds %struct.resource, %struct.resource* %107, i32 0, i32 2
  %109 = load %struct.resource*, %struct.resource** %108, align 8
  store %struct.resource* %109, %struct.resource** %7, align 8
  br label %70

110:                                              ; preds = %104, %93
  %111 = load %struct.resource*, %struct.resource** %4, align 8
  %112 = load %struct.resource*, %struct.resource** %5, align 8
  %113 = getelementptr inbounds %struct.resource, %struct.resource* %112, i32 0, i32 4
  store %struct.resource* %111, %struct.resource** %113, align 8
  %114 = load %struct.resource*, %struct.resource** %7, align 8
  %115 = getelementptr inbounds %struct.resource, %struct.resource* %114, i32 0, i32 2
  %116 = load %struct.resource*, %struct.resource** %115, align 8
  %117 = load %struct.resource*, %struct.resource** %5, align 8
  %118 = getelementptr inbounds %struct.resource, %struct.resource* %117, i32 0, i32 2
  store %struct.resource* %116, %struct.resource** %118, align 8
  %119 = load %struct.resource*, %struct.resource** %6, align 8
  %120 = load %struct.resource*, %struct.resource** %5, align 8
  %121 = getelementptr inbounds %struct.resource, %struct.resource* %120, i32 0, i32 3
  store %struct.resource* %119, %struct.resource** %121, align 8
  %122 = load %struct.resource*, %struct.resource** %7, align 8
  %123 = getelementptr inbounds %struct.resource, %struct.resource* %122, i32 0, i32 2
  store %struct.resource* null, %struct.resource** %123, align 8
  %124 = load %struct.resource*, %struct.resource** %6, align 8
  store %struct.resource* %124, %struct.resource** %7, align 8
  br label %125

125:                                              ; preds = %132, %110
  %126 = load %struct.resource*, %struct.resource** %7, align 8
  %127 = icmp ne %struct.resource* %126, null
  br i1 %127, label %128, label %136

128:                                              ; preds = %125
  %129 = load %struct.resource*, %struct.resource** %5, align 8
  %130 = load %struct.resource*, %struct.resource** %7, align 8
  %131 = getelementptr inbounds %struct.resource, %struct.resource* %130, i32 0, i32 4
  store %struct.resource* %129, %struct.resource** %131, align 8
  br label %132

132:                                              ; preds = %128
  %133 = load %struct.resource*, %struct.resource** %7, align 8
  %134 = getelementptr inbounds %struct.resource, %struct.resource* %133, i32 0, i32 2
  %135 = load %struct.resource*, %struct.resource** %134, align 8
  store %struct.resource* %135, %struct.resource** %7, align 8
  br label %125

136:                                              ; preds = %125
  %137 = load %struct.resource*, %struct.resource** %4, align 8
  %138 = getelementptr inbounds %struct.resource, %struct.resource* %137, i32 0, i32 3
  %139 = load %struct.resource*, %struct.resource** %138, align 8
  %140 = load %struct.resource*, %struct.resource** %6, align 8
  %141 = icmp eq %struct.resource* %139, %140
  br i1 %141, label %142, label %146

142:                                              ; preds = %136
  %143 = load %struct.resource*, %struct.resource** %5, align 8
  %144 = load %struct.resource*, %struct.resource** %4, align 8
  %145 = getelementptr inbounds %struct.resource, %struct.resource* %144, i32 0, i32 3
  store %struct.resource* %143, %struct.resource** %145, align 8
  br label %164

146:                                              ; preds = %136
  %147 = load %struct.resource*, %struct.resource** %4, align 8
  %148 = getelementptr inbounds %struct.resource, %struct.resource* %147, i32 0, i32 3
  %149 = load %struct.resource*, %struct.resource** %148, align 8
  store %struct.resource* %149, %struct.resource** %7, align 8
  br label %150

150:                                              ; preds = %156, %146
  %151 = load %struct.resource*, %struct.resource** %7, align 8
  %152 = getelementptr inbounds %struct.resource, %struct.resource* %151, i32 0, i32 2
  %153 = load %struct.resource*, %struct.resource** %152, align 8
  %154 = load %struct.resource*, %struct.resource** %6, align 8
  %155 = icmp ne %struct.resource* %153, %154
  br i1 %155, label %156, label %160

156:                                              ; preds = %150
  %157 = load %struct.resource*, %struct.resource** %7, align 8
  %158 = getelementptr inbounds %struct.resource, %struct.resource* %157, i32 0, i32 2
  %159 = load %struct.resource*, %struct.resource** %158, align 8
  store %struct.resource* %159, %struct.resource** %7, align 8
  br label %150

160:                                              ; preds = %150
  %161 = load %struct.resource*, %struct.resource** %5, align 8
  %162 = load %struct.resource*, %struct.resource** %7, align 8
  %163 = getelementptr inbounds %struct.resource, %struct.resource* %162, i32 0, i32 2
  store %struct.resource* %161, %struct.resource** %163, align 8
  br label %164

164:                                              ; preds = %160, %142
  store %struct.resource* null, %struct.resource** %3, align 8
  br label %165

165:                                              ; preds = %164, %86, %29, %20, %14
  %166 = load %struct.resource*, %struct.resource** %3, align 8
  ret %struct.resource* %166
}

declare dso_local %struct.resource* @__request_resource(%struct.resource*, %struct.resource*) #1

declare dso_local i64 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

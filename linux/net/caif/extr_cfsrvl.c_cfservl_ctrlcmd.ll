; ModuleID = '/home/carl/AnghaBench/linux/net/caif/extr_cfsrvl.c_cfservl_ctrlcmd.c'
source_filename = "/home/carl/AnghaBench/linux/net/caif/extr_cfsrvl.c_cfservl_ctrlcmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cflayer = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 (%struct.TYPE_12__*, i32, i32)* }
%struct.cfsrvl = type { i32, i32, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"Unexpected ctrl in cfsrvl (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cflayer*, i32, i32)* @cfservl_ctrlcmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cfservl_ctrlcmd(%struct.cflayer* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.cflayer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cfsrvl*, align 8
  store %struct.cflayer* %0, %struct.cflayer** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.cflayer*, %struct.cflayer** %4, align 8
  %9 = call %struct.cfsrvl* @container_obj(%struct.cflayer* %8)
  store %struct.cfsrvl* %9, %struct.cfsrvl** %7, align 8
  %10 = load %struct.cflayer*, %struct.cflayer** %4, align 8
  %11 = getelementptr inbounds %struct.cflayer, %struct.cflayer* %10, i32 0, i32 0
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %13 = icmp eq %struct.TYPE_12__* %12, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %3
  %15 = load %struct.cflayer*, %struct.cflayer** %4, align 8
  %16 = getelementptr inbounds %struct.cflayer, %struct.cflayer* %15, i32 0, i32 0
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = load i32 (%struct.TYPE_12__*, i32, i32)*, i32 (%struct.TYPE_12__*, i32, i32)** %18, align 8
  %20 = icmp eq i32 (%struct.TYPE_12__*, i32, i32)* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %14, %3
  br label %183

22:                                               ; preds = %14
  %23 = load i32, i32* %5, align 4
  switch i32 %23, label %167 [
    i32 132, label %24
    i32 136, label %38
    i32 133, label %38
    i32 129, label %52
    i32 128, label %79
    i32 135, label %106
    i32 134, label %125
    i32 130, label %144
    i32 131, label %155
  ]

24:                                               ; preds = %22
  %25 = load %struct.cfsrvl*, %struct.cfsrvl** %7, align 8
  %26 = getelementptr inbounds %struct.cfsrvl, %struct.cfsrvl* %25, i32 0, i32 0
  store i32 1, i32* %26, align 4
  %27 = load %struct.cflayer*, %struct.cflayer** %4, align 8
  %28 = getelementptr inbounds %struct.cflayer, %struct.cflayer* %27, i32 0, i32 0
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  %31 = load i32 (%struct.TYPE_12__*, i32, i32)*, i32 (%struct.TYPE_12__*, i32, i32)** %30, align 8
  %32 = load %struct.cflayer*, %struct.cflayer** %4, align 8
  %33 = getelementptr inbounds %struct.cflayer, %struct.cflayer* %32, i32 0, i32 0
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 %31(%struct.TYPE_12__* %34, i32 %35, i32 %36)
  br label %183

38:                                               ; preds = %22, %22
  %39 = load %struct.cfsrvl*, %struct.cfsrvl** %7, align 8
  %40 = getelementptr inbounds %struct.cfsrvl, %struct.cfsrvl* %39, i32 0, i32 0
  store i32 0, i32* %40, align 4
  %41 = load %struct.cflayer*, %struct.cflayer** %4, align 8
  %42 = getelementptr inbounds %struct.cflayer, %struct.cflayer* %41, i32 0, i32 0
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = load i32 (%struct.TYPE_12__*, i32, i32)*, i32 (%struct.TYPE_12__*, i32, i32)** %44, align 8
  %46 = load %struct.cflayer*, %struct.cflayer** %4, align 8
  %47 = getelementptr inbounds %struct.cflayer, %struct.cflayer* %46, i32 0, i32 0
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* %6, align 4
  %51 = call i32 %45(%struct.TYPE_12__* %48, i32 %49, i32 %50)
  br label %183

52:                                               ; preds = %22
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.cfsrvl*, %struct.cfsrvl** %7, align 8
  %55 = getelementptr inbounds %struct.cfsrvl, %struct.cfsrvl* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %53, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %52
  br label %183

60:                                               ; preds = %52
  %61 = load %struct.cfsrvl*, %struct.cfsrvl** %7, align 8
  %62 = getelementptr inbounds %struct.cfsrvl, %struct.cfsrvl* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %76

65:                                               ; preds = %60
  %66 = load %struct.cflayer*, %struct.cflayer** %4, align 8
  %67 = getelementptr inbounds %struct.cflayer, %struct.cflayer* %66, i32 0, i32 0
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  %70 = load i32 (%struct.TYPE_12__*, i32, i32)*, i32 (%struct.TYPE_12__*, i32, i32)** %69, align 8
  %71 = load %struct.cflayer*, %struct.cflayer** %4, align 8
  %72 = getelementptr inbounds %struct.cflayer, %struct.cflayer* %71, i32 0, i32 0
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %72, align 8
  %74 = load i32, i32* %6, align 4
  %75 = call i32 %70(%struct.TYPE_12__* %73, i32 135, i32 %74)
  br label %76

76:                                               ; preds = %65, %60
  %77 = load %struct.cfsrvl*, %struct.cfsrvl** %7, align 8
  %78 = getelementptr inbounds %struct.cfsrvl, %struct.cfsrvl* %77, i32 0, i32 2
  store i32 0, i32* %78, align 4
  br label %183

79:                                               ; preds = %22
  %80 = load i32, i32* %6, align 4
  %81 = load %struct.cfsrvl*, %struct.cfsrvl** %7, align 8
  %82 = getelementptr inbounds %struct.cfsrvl, %struct.cfsrvl* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %80, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %79
  br label %183

87:                                               ; preds = %79
  %88 = load %struct.cfsrvl*, %struct.cfsrvl** %7, align 8
  %89 = getelementptr inbounds %struct.cfsrvl, %struct.cfsrvl* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %103

92:                                               ; preds = %87
  %93 = load %struct.cflayer*, %struct.cflayer** %4, align 8
  %94 = getelementptr inbounds %struct.cflayer, %struct.cflayer* %93, i32 0, i32 0
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 0
  %97 = load i32 (%struct.TYPE_12__*, i32, i32)*, i32 (%struct.TYPE_12__*, i32, i32)** %96, align 8
  %98 = load %struct.cflayer*, %struct.cflayer** %4, align 8
  %99 = getelementptr inbounds %struct.cflayer, %struct.cflayer* %98, i32 0, i32 0
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %99, align 8
  %101 = load i32, i32* %6, align 4
  %102 = call i32 %97(%struct.TYPE_12__* %100, i32 134, i32 %101)
  br label %103

103:                                              ; preds = %92, %87
  %104 = load %struct.cfsrvl*, %struct.cfsrvl** %7, align 8
  %105 = getelementptr inbounds %struct.cfsrvl, %struct.cfsrvl* %104, i32 0, i32 2
  store i32 1, i32* %105, align 4
  br label %183

106:                                              ; preds = %22
  %107 = load %struct.cfsrvl*, %struct.cfsrvl** %7, align 8
  %108 = getelementptr inbounds %struct.cfsrvl, %struct.cfsrvl* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %122

111:                                              ; preds = %106
  %112 = load %struct.cflayer*, %struct.cflayer** %4, align 8
  %113 = getelementptr inbounds %struct.cflayer, %struct.cflayer* %112, i32 0, i32 0
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 0
  %116 = load i32 (%struct.TYPE_12__*, i32, i32)*, i32 (%struct.TYPE_12__*, i32, i32)** %115, align 8
  %117 = load %struct.cflayer*, %struct.cflayer** %4, align 8
  %118 = getelementptr inbounds %struct.cflayer, %struct.cflayer* %117, i32 0, i32 0
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %118, align 8
  %120 = load i32, i32* %6, align 4
  %121 = call i32 %116(%struct.TYPE_12__* %119, i32 135, i32 %120)
  br label %122

122:                                              ; preds = %111, %106
  %123 = load %struct.cfsrvl*, %struct.cfsrvl** %7, align 8
  %124 = getelementptr inbounds %struct.cfsrvl, %struct.cfsrvl* %123, i32 0, i32 1
  store i32 0, i32* %124, align 4
  br label %183

125:                                              ; preds = %22
  %126 = load %struct.cfsrvl*, %struct.cfsrvl** %7, align 8
  %127 = getelementptr inbounds %struct.cfsrvl, %struct.cfsrvl* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %141

130:                                              ; preds = %125
  %131 = load %struct.cflayer*, %struct.cflayer** %4, align 8
  %132 = getelementptr inbounds %struct.cflayer, %struct.cflayer* %131, i32 0, i32 0
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 0
  %135 = load i32 (%struct.TYPE_12__*, i32, i32)*, i32 (%struct.TYPE_12__*, i32, i32)** %134, align 8
  %136 = load %struct.cflayer*, %struct.cflayer** %4, align 8
  %137 = getelementptr inbounds %struct.cflayer, %struct.cflayer* %136, i32 0, i32 0
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %137, align 8
  %139 = load i32, i32* %6, align 4
  %140 = call i32 %135(%struct.TYPE_12__* %138, i32 134, i32 %139)
  br label %141

141:                                              ; preds = %130, %125
  %142 = load %struct.cfsrvl*, %struct.cfsrvl** %7, align 8
  %143 = getelementptr inbounds %struct.cfsrvl, %struct.cfsrvl* %142, i32 0, i32 1
  store i32 1, i32* %143, align 4
  br label %183

144:                                              ; preds = %22
  %145 = load %struct.cflayer*, %struct.cflayer** %4, align 8
  %146 = getelementptr inbounds %struct.cflayer, %struct.cflayer* %145, i32 0, i32 0
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 0
  %149 = load i32 (%struct.TYPE_12__*, i32, i32)*, i32 (%struct.TYPE_12__*, i32, i32)** %148, align 8
  %150 = load %struct.cflayer*, %struct.cflayer** %4, align 8
  %151 = getelementptr inbounds %struct.cflayer, %struct.cflayer* %150, i32 0, i32 0
  %152 = load %struct.TYPE_12__*, %struct.TYPE_12__** %151, align 8
  %153 = load i32, i32* %6, align 4
  %154 = call i32 %149(%struct.TYPE_12__* %152, i32 131, i32 %153)
  br label %183

155:                                              ; preds = %22
  %156 = load %struct.cflayer*, %struct.cflayer** %4, align 8
  %157 = getelementptr inbounds %struct.cflayer, %struct.cflayer* %156, i32 0, i32 0
  %158 = load %struct.TYPE_12__*, %struct.TYPE_12__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 0
  %160 = load i32 (%struct.TYPE_12__*, i32, i32)*, i32 (%struct.TYPE_12__*, i32, i32)** %159, align 8
  %161 = load %struct.cflayer*, %struct.cflayer** %4, align 8
  %162 = getelementptr inbounds %struct.cflayer, %struct.cflayer* %161, i32 0, i32 0
  %163 = load %struct.TYPE_12__*, %struct.TYPE_12__** %162, align 8
  %164 = load i32, i32* %5, align 4
  %165 = load i32, i32* %6, align 4
  %166 = call i32 %160(%struct.TYPE_12__* %163, i32 %164, i32 %165)
  br label %183

167:                                              ; preds = %22
  %168 = load i32, i32* %5, align 4
  %169 = call i32 @pr_warn(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %168)
  %170 = load %struct.cflayer*, %struct.cflayer** %4, align 8
  %171 = getelementptr inbounds %struct.cflayer, %struct.cflayer* %170, i32 0, i32 0
  %172 = load %struct.TYPE_12__*, %struct.TYPE_12__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i32 0, i32 0
  %174 = load i32 (%struct.TYPE_12__*, i32, i32)*, i32 (%struct.TYPE_12__*, i32, i32)** %173, align 8
  %175 = load %struct.cflayer*, %struct.cflayer** %4, align 8
  %176 = getelementptr inbounds %struct.cflayer, %struct.cflayer* %175, i32 0, i32 0
  %177 = load %struct.TYPE_12__*, %struct.TYPE_12__** %176, align 8
  %178 = load i32, i32* %5, align 4
  %179 = load i32, i32* %6, align 4
  %180 = call i32 %174(%struct.TYPE_12__* %177, i32 %178, i32 %179)
  %181 = load %struct.cfsrvl*, %struct.cfsrvl** %7, align 8
  %182 = getelementptr inbounds %struct.cfsrvl, %struct.cfsrvl* %181, i32 0, i32 2
  store i32 1, i32* %182, align 4
  br label %183

183:                                              ; preds = %21, %86, %167, %155, %144, %141, %122, %103, %76, %59, %38, %24
  ret void
}

declare dso_local %struct.cfsrvl* @container_obj(%struct.cflayer*) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

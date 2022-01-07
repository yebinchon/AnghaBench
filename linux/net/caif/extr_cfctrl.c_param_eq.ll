; ModuleID = '/home/carl/AnghaBench/linux/net/caif/extr_cfctrl.c_param_eq.c'
source_filename = "/home/carl/AnghaBench/linux/net/caif/extr_cfctrl.c_param_eq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfctrl_link_param = type { i32, i64, i64, i64, i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cfctrl_link_param*, %struct.cfctrl_link_param*)* @param_eq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @param_eq(%struct.cfctrl_link_param* %0, %struct.cfctrl_link_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cfctrl_link_param*, align 8
  %5 = alloca %struct.cfctrl_link_param*, align 8
  %6 = alloca i32, align 4
  store %struct.cfctrl_link_param* %0, %struct.cfctrl_link_param** %4, align 8
  store %struct.cfctrl_link_param* %1, %struct.cfctrl_link_param** %5, align 8
  %7 = load %struct.cfctrl_link_param*, %struct.cfctrl_link_param** %4, align 8
  %8 = getelementptr inbounds %struct.cfctrl_link_param, %struct.cfctrl_link_param* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.cfctrl_link_param*, %struct.cfctrl_link_param** %5, align 8
  %11 = getelementptr inbounds %struct.cfctrl_link_param, %struct.cfctrl_link_param* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp eq i32 %9, %12
  br i1 %13, label %14, label %46

14:                                               ; preds = %2
  %15 = load %struct.cfctrl_link_param*, %struct.cfctrl_link_param** %4, align 8
  %16 = getelementptr inbounds %struct.cfctrl_link_param, %struct.cfctrl_link_param* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.cfctrl_link_param*, %struct.cfctrl_link_param** %5, align 8
  %19 = getelementptr inbounds %struct.cfctrl_link_param, %struct.cfctrl_link_param* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %17, %20
  br i1 %21, label %22, label %46

22:                                               ; preds = %14
  %23 = load %struct.cfctrl_link_param*, %struct.cfctrl_link_param** %4, align 8
  %24 = getelementptr inbounds %struct.cfctrl_link_param, %struct.cfctrl_link_param* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.cfctrl_link_param*, %struct.cfctrl_link_param** %5, align 8
  %27 = getelementptr inbounds %struct.cfctrl_link_param, %struct.cfctrl_link_param* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %25, %28
  br i1 %29, label %30, label %46

30:                                               ; preds = %22
  %31 = load %struct.cfctrl_link_param*, %struct.cfctrl_link_param** %4, align 8
  %32 = getelementptr inbounds %struct.cfctrl_link_param, %struct.cfctrl_link_param* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.cfctrl_link_param*, %struct.cfctrl_link_param** %5, align 8
  %35 = getelementptr inbounds %struct.cfctrl_link_param, %struct.cfctrl_link_param* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %33, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %30
  %39 = load %struct.cfctrl_link_param*, %struct.cfctrl_link_param** %4, align 8
  %40 = getelementptr inbounds %struct.cfctrl_link_param, %struct.cfctrl_link_param* %39, i32 0, i32 4
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.cfctrl_link_param*, %struct.cfctrl_link_param** %5, align 8
  %43 = getelementptr inbounds %struct.cfctrl_link_param, %struct.cfctrl_link_param* %42, i32 0, i32 4
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %41, %44
  br label %46

46:                                               ; preds = %38, %30, %22, %14, %2
  %47 = phi i1 [ false, %30 ], [ false, %22 ], [ false, %14 ], [ false, %2 ], [ %45, %38 ]
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %46
  store i32 0, i32* %3, align 4
  br label %184

52:                                               ; preds = %46
  %53 = load %struct.cfctrl_link_param*, %struct.cfctrl_link_param** %4, align 8
  %54 = getelementptr inbounds %struct.cfctrl_link_param, %struct.cfctrl_link_param* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  switch i32 %55, label %183 [
    i32 129, label %56
    i32 134, label %57
    i32 131, label %70
    i32 130, label %98
    i32 128, label %168
    i32 133, label %181
    i32 132, label %182
  ]

56:                                               ; preds = %52
  store i32 1, i32* %3, align 4
  br label %184

57:                                               ; preds = %52
  %58 = load %struct.cfctrl_link_param*, %struct.cfctrl_link_param** %4, align 8
  %59 = getelementptr inbounds %struct.cfctrl_link_param, %struct.cfctrl_link_param* %58, i32 0, i32 5
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.cfctrl_link_param*, %struct.cfctrl_link_param** %5, align 8
  %64 = getelementptr inbounds %struct.cfctrl_link_param, %struct.cfctrl_link_param* %63, i32 0, i32 5
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp eq i32 %62, %67
  %69 = zext i1 %68 to i32
  store i32 %69, i32* %3, align 4
  br label %184

70:                                               ; preds = %52
  %71 = load %struct.cfctrl_link_param*, %struct.cfctrl_link_param** %4, align 8
  %72 = getelementptr inbounds %struct.cfctrl_link_param, %struct.cfctrl_link_param* %71, i32 0, i32 5
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.cfctrl_link_param*, %struct.cfctrl_link_param** %5, align 8
  %77 = getelementptr inbounds %struct.cfctrl_link_param, %struct.cfctrl_link_param* %76, i32 0, i32 5
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = icmp eq i32 %75, %80
  br i1 %81, label %82, label %95

82:                                               ; preds = %70
  %83 = load %struct.cfctrl_link_param*, %struct.cfctrl_link_param** %4, align 8
  %84 = getelementptr inbounds %struct.cfctrl_link_param, %struct.cfctrl_link_param* %83, i32 0, i32 5
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.cfctrl_link_param*, %struct.cfctrl_link_param** %5, align 8
  %89 = getelementptr inbounds %struct.cfctrl_link_param, %struct.cfctrl_link_param* %88, i32 0, i32 5
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @strcmp(i32 %87, i32 %92)
  %94 = icmp eq i32 %93, 0
  br label %95

95:                                               ; preds = %82, %70
  %96 = phi i1 [ false, %70 ], [ %94, %82 ]
  %97 = zext i1 %96 to i32
  store i32 %97, i32* %3, align 4
  br label %184

98:                                               ; preds = %52
  %99 = load %struct.cfctrl_link_param*, %struct.cfctrl_link_param** %4, align 8
  %100 = getelementptr inbounds %struct.cfctrl_link_param, %struct.cfctrl_link_param* %99, i32 0, i32 5
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.cfctrl_link_param*, %struct.cfctrl_link_param** %5, align 8
  %105 = getelementptr inbounds %struct.cfctrl_link_param, %struct.cfctrl_link_param* %104, i32 0, i32 5
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 4
  %109 = icmp eq i32 %103, %108
  br i1 %109, label %110, label %165

110:                                              ; preds = %98
  %111 = load %struct.cfctrl_link_param*, %struct.cfctrl_link_param** %4, align 8
  %112 = getelementptr inbounds %struct.cfctrl_link_param, %struct.cfctrl_link_param* %111, i32 0, i32 5
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.cfctrl_link_param*, %struct.cfctrl_link_param** %5, align 8
  %117 = getelementptr inbounds %struct.cfctrl_link_param, %struct.cfctrl_link_param* %116, i32 0, i32 5
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = icmp eq i32 %115, %120
  br i1 %121, label %122, label %165

122:                                              ; preds = %110
  %123 = load %struct.cfctrl_link_param*, %struct.cfctrl_link_param** %4, align 8
  %124 = getelementptr inbounds %struct.cfctrl_link_param, %struct.cfctrl_link_param* %123, i32 0, i32 5
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.cfctrl_link_param*, %struct.cfctrl_link_param** %5, align 8
  %129 = getelementptr inbounds %struct.cfctrl_link_param, %struct.cfctrl_link_param* %128, i32 0, i32 5
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @strcmp(i32 %127, i32 %132)
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %165

135:                                              ; preds = %122
  %136 = load %struct.cfctrl_link_param*, %struct.cfctrl_link_param** %4, align 8
  %137 = getelementptr inbounds %struct.cfctrl_link_param, %struct.cfctrl_link_param* %136, i32 0, i32 5
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.cfctrl_link_param*, %struct.cfctrl_link_param** %5, align 8
  %142 = getelementptr inbounds %struct.cfctrl_link_param, %struct.cfctrl_link_param* %141, i32 0, i32 5
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = icmp eq i32 %140, %145
  br i1 %146, label %147, label %165

147:                                              ; preds = %135
  %148 = load %struct.cfctrl_link_param*, %struct.cfctrl_link_param** %4, align 8
  %149 = getelementptr inbounds %struct.cfctrl_link_param, %struct.cfctrl_link_param* %148, i32 0, i32 5
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.cfctrl_link_param*, %struct.cfctrl_link_param** %5, align 8
  %154 = getelementptr inbounds %struct.cfctrl_link_param, %struct.cfctrl_link_param* %153, i32 0, i32 5
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.cfctrl_link_param*, %struct.cfctrl_link_param** %4, align 8
  %159 = getelementptr inbounds %struct.cfctrl_link_param, %struct.cfctrl_link_param* %158, i32 0, i32 5
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @memcmp(i32 %152, i32 %157, i32 %162)
  %164 = icmp eq i32 %163, 0
  br label %165

165:                                              ; preds = %147, %135, %122, %110, %98
  %166 = phi i1 [ false, %135 ], [ false, %122 ], [ false, %110 ], [ false, %98 ], [ %164, %147 ]
  %167 = zext i1 %166 to i32
  store i32 %167, i32* %3, align 4
  br label %184

168:                                              ; preds = %52
  %169 = load %struct.cfctrl_link_param*, %struct.cfctrl_link_param** %4, align 8
  %170 = getelementptr inbounds %struct.cfctrl_link_param, %struct.cfctrl_link_param* %169, i32 0, i32 5
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.cfctrl_link_param*, %struct.cfctrl_link_param** %5, align 8
  %175 = getelementptr inbounds %struct.cfctrl_link_param, %struct.cfctrl_link_param* %174, i32 0, i32 5
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = icmp eq i32 %173, %178
  %180 = zext i1 %179 to i32
  store i32 %180, i32* %3, align 4
  br label %184

181:                                              ; preds = %52
  store i32 1, i32* %3, align 4
  br label %184

182:                                              ; preds = %52
  store i32 0, i32* %3, align 4
  br label %184

183:                                              ; preds = %52
  store i32 0, i32* %3, align 4
  br label %184

184:                                              ; preds = %183, %182, %181, %168, %165, %95, %57, %56, %51
  %185 = load i32, i32* %3, align 4
  ret i32 %185
}

declare dso_local i32 @strcmp(i32, i32) #1

declare dso_local i32 @memcmp(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

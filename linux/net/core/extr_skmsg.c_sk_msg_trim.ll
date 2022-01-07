; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_skmsg.c_sk_msg_trim.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_skmsg.c_sk_msg_trim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_msg = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64, i64, i32, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sk_msg_trim(%struct.sock* %0, %struct.sk_msg* %1, i32 %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sk_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sk_msg* %1, %struct.sk_msg** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.sk_msg*, %struct.sk_msg** %5, align 8
  %10 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* %6, align 4
  %14 = sub nsw i32 %12, %13
  store i32 %14, i32* %7, align 4
  %15 = load %struct.sk_msg*, %struct.sk_msg** %5, align 8
  %16 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %8, align 8
  %19 = load i32, i32* %7, align 4
  %20 = icmp sle i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %3
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i32 @WARN_ON(i32 %24)
  br label %186

26:                                               ; preds = %3
  %27 = load i64, i64* %8, align 8
  %28 = call i32 @sk_msg_iter_var_prev(i64 %27)
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.sk_msg*, %struct.sk_msg** %5, align 8
  %31 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 8
  br label %33

33:                                               ; preds = %76, %26
  %34 = load %struct.sk_msg*, %struct.sk_msg** %5, align 8
  %35 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 5
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = load i64, i64* %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %33
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.sk_msg*, %struct.sk_msg** %5, align 8
  %46 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 5
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = load i64, i64* %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp sge i32 %44, %52
  br label %54

54:                                               ; preds = %43, %33
  %55 = phi i1 [ false, %33 ], [ %53, %43 ]
  br i1 %55, label %56, label %77

56:                                               ; preds = %54
  %57 = load %struct.sk_msg*, %struct.sk_msg** %5, align 8
  %58 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 5
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = load i64, i64* %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %7, align 4
  %66 = sub nsw i32 %65, %64
  store i32 %66, i32* %7, align 4
  %67 = load %struct.sock*, %struct.sock** %4, align 8
  %68 = load %struct.sk_msg*, %struct.sk_msg** %5, align 8
  %69 = load i64, i64* %8, align 8
  %70 = call i32 @sk_msg_free_elem(%struct.sock* %67, %struct.sk_msg* %68, i64 %69, i32 1)
  %71 = load i64, i64* %8, align 8
  %72 = call i32 @sk_msg_iter_var_prev(i64 %71)
  %73 = load i32, i32* %7, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %56
  br label %124

76:                                               ; preds = %56
  br label %33

77:                                               ; preds = %54
  %78 = load i32, i32* %7, align 4
  %79 = load %struct.sk_msg*, %struct.sk_msg** %5, align 8
  %80 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 5
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %81, align 8
  %83 = load i64, i64* %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = sub nsw i32 %86, %78
  store i32 %87, i32* %85, align 4
  %88 = load %struct.sock*, %struct.sock** %4, align 8
  %89 = load i32, i32* %7, align 4
  %90 = call i32 @sk_mem_uncharge(%struct.sock* %88, i32 %89)
  %91 = load %struct.sk_msg*, %struct.sk_msg** %5, align 8
  %92 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* %8, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %123

97:                                               ; preds = %77
  %98 = load %struct.sk_msg*, %struct.sk_msg** %5, align 8
  %99 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.sk_msg*, %struct.sk_msg** %5, align 8
  %103 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 5
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %104, align 8
  %106 = load i64, i64* %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = icmp sgt i32 %101, %109
  br i1 %110, label %111, label %123

111:                                              ; preds = %97
  %112 = load %struct.sk_msg*, %struct.sk_msg** %5, align 8
  %113 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 5
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %114, align 8
  %116 = load i64, i64* %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.sk_msg*, %struct.sk_msg** %5, align 8
  %121 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 3
  store i32 %119, i32* %122, align 8
  br label %123

123:                                              ; preds = %111, %97, %77
  br label %124

124:                                              ; preds = %123, %75
  %125 = load i64, i64* %8, align 8
  %126 = call i32 @sk_msg_iter_var_next(i64 %125)
  %127 = load i64, i64* %8, align 8
  %128 = load %struct.sk_msg*, %struct.sk_msg** %5, align 8
  %129 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 1
  store i64 %127, i64* %130, align 8
  %131 = load %struct.sk_msg*, %struct.sk_msg** %5, align 8
  %132 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %147, label %136

136:                                              ; preds = %124
  %137 = load %struct.sk_msg*, %struct.sk_msg** %5, align 8
  %138 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 4
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.sk_msg*, %struct.sk_msg** %5, align 8
  %142 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 2
  store i64 %140, i64* %143, align 8
  %144 = load %struct.sk_msg*, %struct.sk_msg** %5, align 8
  %145 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 3
  store i32 0, i32* %146, align 8
  br label %186

147:                                              ; preds = %124
  %148 = load %struct.sk_msg*, %struct.sk_msg** %5, align 8
  %149 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 4
  %151 = load i64, i64* %150, align 8
  %152 = load %struct.sk_msg*, %struct.sk_msg** %5, align 8
  %153 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 2
  %155 = load i64, i64* %154, align 8
  %156 = call i64 @sk_msg_iter_dist(i64 %151, i64 %155)
  %157 = load %struct.sk_msg*, %struct.sk_msg** %5, align 8
  %158 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 4
  %160 = load i64, i64* %159, align 8
  %161 = load %struct.sk_msg*, %struct.sk_msg** %5, align 8
  %162 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = call i64 @sk_msg_iter_dist(i64 %160, i64 %164)
  %166 = icmp sge i64 %156, %165
  br i1 %166, label %167, label %185

167:                                              ; preds = %147
  %168 = load i64, i64* %8, align 8
  %169 = call i32 @sk_msg_iter_var_prev(i64 %168)
  %170 = load i64, i64* %8, align 8
  %171 = load %struct.sk_msg*, %struct.sk_msg** %5, align 8
  %172 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 2
  store i64 %170, i64* %173, align 8
  %174 = load %struct.sk_msg*, %struct.sk_msg** %5, align 8
  %175 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 5
  %177 = load %struct.TYPE_3__*, %struct.TYPE_3__** %176, align 8
  %178 = load i64, i64* %8, align 8
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %177, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.sk_msg*, %struct.sk_msg** %5, align 8
  %183 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 3
  store i32 %181, i32* %184, align 8
  br label %185

185:                                              ; preds = %167, %147
  br label %186

186:                                              ; preds = %21, %185, %136
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @sk_msg_iter_var_prev(i64) #1

declare dso_local i32 @sk_msg_free_elem(%struct.sock*, %struct.sk_msg*, i64, i32) #1

declare dso_local i32 @sk_mem_uncharge(%struct.sock*, i32) #1

declare dso_local i32 @sk_msg_iter_var_next(i64) #1

declare dso_local i64 @sk_msg_iter_dist(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

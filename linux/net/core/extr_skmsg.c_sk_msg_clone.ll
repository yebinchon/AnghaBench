; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_skmsg.c_sk_msg_clone.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_skmsg.c_sk_msg_clone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_msg = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.scatterlist = type { i64, i64 }

@ENOSPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sk_msg_clone(%struct.sock* %0, %struct.sk_msg* %1, %struct.sk_msg* %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sock*, align 8
  %8 = alloca %struct.sk_msg*, align 8
  %9 = alloca %struct.sk_msg*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.scatterlist*, align 8
  %14 = alloca %struct.scatterlist*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.sock* %0, %struct.sock** %7, align 8
  store %struct.sk_msg* %1, %struct.sk_msg** %8, align 8
  store %struct.sk_msg* %2, %struct.sk_msg** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %17 = load %struct.sk_msg*, %struct.sk_msg** %9, align 8
  %18 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %12, align 4
  %21 = load %struct.sk_msg*, %struct.sk_msg** %9, align 8
  %22 = load i32, i32* %12, align 4
  %23 = call %struct.scatterlist* @sk_msg_elem(%struct.sk_msg* %21, i32 %22)
  store %struct.scatterlist* %23, %struct.scatterlist** %13, align 8
  store %struct.scatterlist* null, %struct.scatterlist** %14, align 8
  br label %24

24:                                               ; preds = %54, %5
  %25 = load i64, i64* %10, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %58

27:                                               ; preds = %24
  %28 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %29 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %10, align 8
  %32 = icmp sgt i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %58

34:                                               ; preds = %27
  %35 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %36 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %10, align 8
  %39 = sub nsw i64 %38, %37
  store i64 %39, i64* %10, align 8
  %40 = load i32, i32* %12, align 4
  %41 = call i32 @sk_msg_iter_var_next(i32 %40)
  %42 = load i32, i32* %12, align 4
  %43 = load %struct.sk_msg*, %struct.sk_msg** %9, align 8
  %44 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %42, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %34
  %49 = load i64, i64* %10, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load i32, i32* @ENOSPC, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %6, align 4
  br label %168

54:                                               ; preds = %48, %34
  %55 = load %struct.sk_msg*, %struct.sk_msg** %9, align 8
  %56 = load i32, i32* %12, align 4
  %57 = call %struct.scatterlist* @sk_msg_elem(%struct.sk_msg* %55, i32 %56)
  store %struct.scatterlist* %57, %struct.scatterlist** %13, align 8
  br label %24

58:                                               ; preds = %33, %24
  br label %59

59:                                               ; preds = %163, %58
  %60 = load i64, i64* %11, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %167

62:                                               ; preds = %59
  %63 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %64 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* %10, align 8
  %67 = sub nsw i64 %65, %66
  store i64 %67, i64* %15, align 8
  %68 = load i64, i64* %15, align 8
  %69 = load i64, i64* %11, align 8
  %70 = icmp sgt i64 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %62
  %72 = load i64, i64* %11, align 8
  store i64 %72, i64* %15, align 8
  br label %73

73:                                               ; preds = %71, %62
  %74 = load %struct.sk_msg*, %struct.sk_msg** %8, align 8
  %75 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %73
  %80 = load %struct.sk_msg*, %struct.sk_msg** %8, align 8
  %81 = load %struct.sk_msg*, %struct.sk_msg** %8, align 8
  %82 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = sub nsw i32 %84, 1
  %86 = call %struct.scatterlist* @sk_msg_elem(%struct.sk_msg* %80, i32 %85)
  store %struct.scatterlist* %86, %struct.scatterlist** %14, align 8
  br label %87

87:                                               ; preds = %79, %73
  %88 = load %struct.scatterlist*, %struct.scatterlist** %14, align 8
  %89 = icmp ne %struct.scatterlist* %88, null
  br i1 %89, label %90, label %122

90:                                               ; preds = %87
  %91 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %92 = call i64 @sg_page(%struct.scatterlist* %91)
  %93 = load %struct.scatterlist*, %struct.scatterlist** %14, align 8
  %94 = call i64 @sg_page(%struct.scatterlist* %93)
  %95 = icmp eq i64 %92, %94
  br i1 %95, label %96, label %122

96:                                               ; preds = %90
  %97 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %98 = call i64 @sg_virt(%struct.scatterlist* %97)
  %99 = load i64, i64* %10, align 8
  %100 = add nsw i64 %98, %99
  %101 = load %struct.scatterlist*, %struct.scatterlist** %14, align 8
  %102 = call i64 @sg_virt(%struct.scatterlist* %101)
  %103 = load %struct.scatterlist*, %struct.scatterlist** %14, align 8
  %104 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = add nsw i64 %102, %105
  %107 = icmp eq i64 %100, %106
  br i1 %107, label %108, label %122

108:                                              ; preds = %96
  %109 = load i64, i64* %15, align 8
  %110 = load %struct.scatterlist*, %struct.scatterlist** %14, align 8
  %111 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = add nsw i64 %112, %109
  store i64 %113, i64* %111, align 8
  %114 = load i64, i64* %15, align 8
  %115 = load %struct.sk_msg*, %struct.sk_msg** %8, align 8
  %116 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = sext i32 %118 to i64
  %120 = add nsw i64 %119, %114
  %121 = trunc i64 %120 to i32
  store i32 %121, i32* %117, align 4
  br label %142

122:                                              ; preds = %96, %90, %87
  %123 = load %struct.sk_msg*, %struct.sk_msg** %8, align 8
  %124 = call i32 @sk_msg_full(%struct.sk_msg* %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %138, label %126

126:                                              ; preds = %122
  %127 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %128 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* %10, align 8
  %131 = add nsw i64 %129, %130
  store i64 %131, i64* %16, align 8
  %132 = load %struct.sk_msg*, %struct.sk_msg** %8, align 8
  %133 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %134 = call i64 @sg_page(%struct.scatterlist* %133)
  %135 = load i64, i64* %15, align 8
  %136 = load i64, i64* %16, align 8
  %137 = call i32 @sk_msg_page_add(%struct.sk_msg* %132, i64 %134, i64 %135, i64 %136)
  br label %141

138:                                              ; preds = %122
  %139 = load i32, i32* @ENOSPC, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %6, align 4
  br label %168

141:                                              ; preds = %126
  br label %142

142:                                              ; preds = %141, %108
  store i64 0, i64* %10, align 8
  %143 = load i64, i64* %15, align 8
  %144 = load i64, i64* %11, align 8
  %145 = sub nsw i64 %144, %143
  store i64 %145, i64* %11, align 8
  %146 = load %struct.sock*, %struct.sock** %7, align 8
  %147 = load i64, i64* %15, align 8
  %148 = call i32 @sk_mem_charge(%struct.sock* %146, i64 %147)
  %149 = load i32, i32* %12, align 4
  %150 = call i32 @sk_msg_iter_var_next(i32 %149)
  %151 = load i32, i32* %12, align 4
  %152 = load %struct.sk_msg*, %struct.sk_msg** %9, align 8
  %153 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = icmp eq i32 %151, %155
  br i1 %156, label %157, label %163

157:                                              ; preds = %142
  %158 = load i64, i64* %11, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %157
  %161 = load i32, i32* @ENOSPC, align 4
  %162 = sub nsw i32 0, %161
  store i32 %162, i32* %6, align 4
  br label %168

163:                                              ; preds = %157, %142
  %164 = load %struct.sk_msg*, %struct.sk_msg** %9, align 8
  %165 = load i32, i32* %12, align 4
  %166 = call %struct.scatterlist* @sk_msg_elem(%struct.sk_msg* %164, i32 %165)
  store %struct.scatterlist* %166, %struct.scatterlist** %13, align 8
  br label %59

167:                                              ; preds = %59
  store i32 0, i32* %6, align 4
  br label %168

168:                                              ; preds = %167, %160, %138, %51
  %169 = load i32, i32* %6, align 4
  ret i32 %169
}

declare dso_local %struct.scatterlist* @sk_msg_elem(%struct.sk_msg*, i32) #1

declare dso_local i32 @sk_msg_iter_var_next(i32) #1

declare dso_local i64 @sg_page(%struct.scatterlist*) #1

declare dso_local i64 @sg_virt(%struct.scatterlist*) #1

declare dso_local i32 @sk_msg_full(%struct.sk_msg*) #1

declare dso_local i32 @sk_msg_page_add(%struct.sk_msg*, i64, i64, i64) #1

declare dso_local i32 @sk_mem_charge(%struct.sock*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

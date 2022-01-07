; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_skmsg.c_sk_msg_memcopy_from_iter.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_skmsg.c_sk_msg_memcopy_from_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.iov_iter = type { i32 }
%struct.sk_msg = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i64 }
%struct.scatterlist = type { i64 }

@ENOSPC = common dso_local global i32 0, align 4
@NETIF_F_NOCACHE_COPY = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sk_msg_memcopy_from_iter(%struct.sock* %0, %struct.iov_iter* %1, %struct.sk_msg* %2, i32 %3) #0 {
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.iov_iter*, align 8
  %7 = alloca %struct.sk_msg*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.scatterlist*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %struct.iov_iter* %1, %struct.iov_iter** %6, align 8
  store %struct.sk_msg* %2, %struct.sk_msg** %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = load i32, i32* @ENOSPC, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %9, align 4
  %17 = load %struct.sk_msg*, %struct.sk_msg** %7, align 8
  %18 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %10, align 4
  br label %21

21:                                               ; preds = %119, %4
  %22 = load %struct.sk_msg*, %struct.sk_msg** %7, align 8
  %23 = load i32, i32* %10, align 4
  %24 = call %struct.scatterlist* @sk_msg_elem(%struct.sk_msg* %22, i32 %23)
  store %struct.scatterlist* %24, %struct.scatterlist** %11, align 8
  %25 = load %struct.sk_msg*, %struct.sk_msg** %7, align 8
  %26 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.scatterlist*, %struct.scatterlist** %11, align 8
  %30 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp sge i64 %28, %31
  br i1 %32, label %33, label %50

33:                                               ; preds = %21
  %34 = load %struct.sk_msg*, %struct.sk_msg** %7, align 8
  %35 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  store i64 0, i64* %36, align 8
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @sk_msg_iter_var_next(i32 %37)
  %39 = load i32, i32* %10, align 4
  %40 = load %struct.sk_msg*, %struct.sk_msg** %7, align 8
  %41 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %39, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %33
  br label %126

46:                                               ; preds = %33
  %47 = load %struct.sk_msg*, %struct.sk_msg** %7, align 8
  %48 = load i32, i32* %10, align 4
  %49 = call %struct.scatterlist* @sk_msg_elem(%struct.sk_msg* %47, i32 %48)
  store %struct.scatterlist* %49, %struct.scatterlist** %11, align 8
  br label %50

50:                                               ; preds = %46, %21
  %51 = load %struct.scatterlist*, %struct.scatterlist** %11, align 8
  %52 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.sk_msg*, %struct.sk_msg** %7, align 8
  %55 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = sub nsw i64 %53, %57
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %13, align 4
  %60 = load i32, i32* %13, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp sgt i32 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %50
  %64 = load i32, i32* %8, align 4
  br label %67

65:                                               ; preds = %50
  %66 = load i32, i32* %13, align 4
  br label %67

67:                                               ; preds = %65, %63
  %68 = phi i32 [ %64, %63 ], [ %66, %65 ]
  store i32 %68, i32* %12, align 4
  %69 = load %struct.scatterlist*, %struct.scatterlist** %11, align 8
  %70 = call i8* @sg_virt(%struct.scatterlist* %69)
  %71 = load %struct.sk_msg*, %struct.sk_msg** %7, align 8
  %72 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr i8, i8* %70, i64 %74
  store i8* %75, i8** %14, align 8
  %76 = load i32, i32* %12, align 4
  %77 = sext i32 %76 to i64
  %78 = load %struct.sk_msg*, %struct.sk_msg** %7, align 8
  %79 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = add nsw i64 %81, %77
  store i64 %82, i64* %80, align 8
  %83 = load %struct.sock*, %struct.sock** %5, align 8
  %84 = getelementptr inbounds %struct.sock, %struct.sock* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @NETIF_F_NOCACHE_COPY, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %67
  %90 = load i8*, i8** %14, align 8
  %91 = load i32, i32* %12, align 4
  %92 = load %struct.iov_iter*, %struct.iov_iter** %6, align 8
  %93 = call i32 @copy_from_iter_nocache(i8* %90, i32 %91, %struct.iov_iter* %92)
  store i32 %93, i32* %9, align 4
  br label %99

94:                                               ; preds = %67
  %95 = load i8*, i8** %14, align 8
  %96 = load i32, i32* %12, align 4
  %97 = load %struct.iov_iter*, %struct.iov_iter** %6, align 8
  %98 = call i32 @copy_from_iter(i8* %95, i32 %96, %struct.iov_iter* %97)
  store i32 %98, i32* %9, align 4
  br label %99

99:                                               ; preds = %94, %89
  %100 = load i32, i32* %9, align 4
  %101 = load i32, i32* %12, align 4
  %102 = icmp ne i32 %100, %101
  br i1 %102, label %103, label %106

103:                                              ; preds = %99
  %104 = load i32, i32* @EFAULT, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %9, align 4
  br label %127

106:                                              ; preds = %99
  %107 = load i32, i32* %12, align 4
  %108 = load i32, i32* %8, align 4
  %109 = sub nsw i32 %108, %107
  store i32 %109, i32* %8, align 4
  %110 = load i32, i32* %8, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %113, label %112

112:                                              ; preds = %106
  br label %126

113:                                              ; preds = %106
  %114 = load %struct.sk_msg*, %struct.sk_msg** %7, align 8
  %115 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 2
  store i64 0, i64* %116, align 8
  %117 = load i32, i32* %10, align 4
  %118 = call i32 @sk_msg_iter_var_next(i32 %117)
  br label %119

119:                                              ; preds = %113
  %120 = load i32, i32* %10, align 4
  %121 = load %struct.sk_msg*, %struct.sk_msg** %7, align 8
  %122 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = icmp ne i32 %120, %124
  br i1 %125, label %21, label %126

126:                                              ; preds = %119, %112, %45
  br label %127

127:                                              ; preds = %126, %103
  %128 = load i32, i32* %10, align 4
  %129 = load %struct.sk_msg*, %struct.sk_msg** %7, align 8
  %130 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 0
  store i32 %128, i32* %131, align 8
  %132 = load i32, i32* %9, align 4
  ret i32 %132
}

declare dso_local %struct.scatterlist* @sk_msg_elem(%struct.sk_msg*, i32) #1

declare dso_local i32 @sk_msg_iter_var_next(i32) #1

declare dso_local i8* @sg_virt(%struct.scatterlist*) #1

declare dso_local i32 @copy_from_iter_nocache(i8*, i32, %struct.iov_iter*) #1

declare dso_local i32 @copy_from_iter(i8*, i32, %struct.iov_iter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

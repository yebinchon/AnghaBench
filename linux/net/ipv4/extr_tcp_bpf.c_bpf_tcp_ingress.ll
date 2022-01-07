; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_bpf.c_bpf_tcp_ingress.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_bpf.c_bpf_tcp_ingress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_psock = type { i32 }
%struct.sk_msg = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.scatterlist = type { i64 }

@__GFP_NOWARN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_psock*, %struct.sk_msg*, i64, i32)* @bpf_tcp_ingress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bpf_tcp_ingress(%struct.sock* %0, %struct.sk_psock* %1, %struct.sk_msg* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sock*, align 8
  %8 = alloca %struct.sk_psock*, align 8
  %9 = alloca %struct.sk_msg*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.scatterlist*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.sk_msg*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %7, align 8
  store %struct.sk_psock* %1, %struct.sk_psock** %8, align 8
  store %struct.sk_msg* %2, %struct.sk_msg** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %19 = load i64, i64* %10, align 8
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %12, align 4
  store i64 0, i64* %15, align 8
  store i32 0, i32* %18, align 4
  %21 = load i32, i32* @__GFP_NOWARN, align 4
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = or i32 %21, %22
  %24 = call %struct.sk_msg* @kzalloc(i32 12, i32 %23)
  store %struct.sk_msg* %24, %struct.sk_msg** %16, align 8
  %25 = load %struct.sk_msg*, %struct.sk_msg** %16, align 8
  %26 = icmp ne %struct.sk_msg* %25, null
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %5
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %6, align 4
  br label %157

34:                                               ; preds = %5
  %35 = load %struct.sock*, %struct.sock** %7, align 8
  %36 = call i32 @lock_sock(%struct.sock* %35)
  %37 = load %struct.sk_msg*, %struct.sk_msg** %9, align 8
  %38 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.sk_msg*, %struct.sk_msg** %16, align 8
  %42 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  store i32 %40, i32* %43, align 4
  %44 = load %struct.sk_msg*, %struct.sk_msg** %9, align 8
  %45 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %17, align 4
  br label %48

48:                                               ; preds = %118, %34
  %49 = load %struct.sk_msg*, %struct.sk_msg** %9, align 8
  %50 = load i32, i32* %17, align 4
  %51 = call %struct.scatterlist* @sk_msg_elem(%struct.sk_msg* %49, i32 %50)
  store %struct.scatterlist* %51, %struct.scatterlist** %13, align 8
  %52 = load i32, i32* %12, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %48
  %55 = load i64, i64* %10, align 8
  %56 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %57 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp slt i64 %55, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = load i64, i64* %10, align 8
  br label %66

62:                                               ; preds = %54, %48
  %63 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %64 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  br label %66

66:                                               ; preds = %62, %60
  %67 = phi i64 [ %61, %60 ], [ %65, %62 ]
  store i64 %67, i64* %14, align 8
  %68 = load %struct.sock*, %struct.sock** %7, align 8
  %69 = load i64, i64* %14, align 8
  %70 = call i32 @sk_wmem_schedule(%struct.sock* %68, i64 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %79, label %72

72:                                               ; preds = %66
  %73 = load i64, i64* %15, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %72
  %76 = load i32, i32* @ENOMEM, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %18, align 4
  br label %78

78:                                               ; preds = %75, %72
  br label %125

79:                                               ; preds = %66
  %80 = load %struct.sock*, %struct.sock** %7, align 8
  %81 = load i64, i64* %14, align 8
  %82 = call i32 @sk_mem_charge(%struct.sock* %80, i64 %81)
  %83 = load %struct.sk_msg*, %struct.sk_msg** %16, align 8
  %84 = load %struct.sk_msg*, %struct.sk_msg** %9, align 8
  %85 = load i32, i32* %17, align 4
  %86 = load i64, i64* %14, align 8
  %87 = call i32 @sk_msg_xfer(%struct.sk_msg* %83, %struct.sk_msg* %84, i32 %85, i64 %86)
  %88 = load i64, i64* %14, align 8
  %89 = load i64, i64* %15, align 8
  %90 = add nsw i64 %89, %88
  store i64 %90, i64* %15, align 8
  %91 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %92 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %79
  %96 = load %struct.sk_msg*, %struct.sk_msg** %16, align 8
  %97 = load i32, i32* %17, align 4
  %98 = call i32 @sk_msg_page(%struct.sk_msg* %96, i32 %97)
  %99 = call i32 @get_page(i32 %98)
  br label %100

100:                                              ; preds = %95, %79
  %101 = load i32, i32* %17, align 4
  %102 = call i32 @sk_msg_iter_var_next(i32 %101)
  %103 = load i32, i32* %17, align 4
  %104 = load %struct.sk_msg*, %struct.sk_msg** %16, align 8
  %105 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 1
  store i32 %103, i32* %106, align 4
  %107 = load i32, i32* %12, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %117

109:                                              ; preds = %100
  %110 = load i64, i64* %14, align 8
  %111 = load i64, i64* %10, align 8
  %112 = sub nsw i64 %111, %110
  store i64 %112, i64* %10, align 8
  %113 = load i64, i64* %10, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %109
  br label %125

116:                                              ; preds = %109
  br label %117

117:                                              ; preds = %116, %100
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %17, align 4
  %120 = load %struct.sk_msg*, %struct.sk_msg** %9, align 8
  %121 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = icmp ne i32 %119, %123
  br i1 %124, label %48, label %125

125:                                              ; preds = %118, %115, %78
  %126 = load i32, i32* %18, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %147, label %128

128:                                              ; preds = %125
  %129 = load i32, i32* %17, align 4
  %130 = load %struct.sk_msg*, %struct.sk_msg** %9, align 8
  %131 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 0
  store i32 %129, i32* %132, align 4
  %133 = load i64, i64* %10, align 8
  %134 = load %struct.sk_msg*, %struct.sk_msg** %9, align 8
  %135 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = sext i32 %137 to i64
  %139 = sub nsw i64 %138, %133
  %140 = trunc i64 %139 to i32
  store i32 %140, i32* %136, align 4
  %141 = load %struct.sk_psock*, %struct.sk_psock** %8, align 8
  %142 = load %struct.sk_msg*, %struct.sk_msg** %16, align 8
  %143 = call i32 @sk_psock_queue_msg(%struct.sk_psock* %141, %struct.sk_msg* %142)
  %144 = load %struct.sock*, %struct.sock** %7, align 8
  %145 = load %struct.sk_psock*, %struct.sk_psock** %8, align 8
  %146 = call i32 @sk_psock_data_ready(%struct.sock* %144, %struct.sk_psock* %145)
  br label %153

147:                                              ; preds = %125
  %148 = load %struct.sock*, %struct.sock** %7, align 8
  %149 = load %struct.sk_msg*, %struct.sk_msg** %16, align 8
  %150 = call i32 @sk_msg_free(%struct.sock* %148, %struct.sk_msg* %149)
  %151 = load %struct.sk_msg*, %struct.sk_msg** %16, align 8
  %152 = call i32 @kfree(%struct.sk_msg* %151)
  br label %153

153:                                              ; preds = %147, %128
  %154 = load %struct.sock*, %struct.sock** %7, align 8
  %155 = call i32 @release_sock(%struct.sock* %154)
  %156 = load i32, i32* %18, align 4
  store i32 %156, i32* %6, align 4
  br label %157

157:                                              ; preds = %153, %31
  %158 = load i32, i32* %6, align 4
  ret i32 %158
}

declare dso_local %struct.sk_msg* @kzalloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local %struct.scatterlist* @sk_msg_elem(%struct.sk_msg*, i32) #1

declare dso_local i32 @sk_wmem_schedule(%struct.sock*, i64) #1

declare dso_local i32 @sk_mem_charge(%struct.sock*, i64) #1

declare dso_local i32 @sk_msg_xfer(%struct.sk_msg*, %struct.sk_msg*, i32, i64) #1

declare dso_local i32 @get_page(i32) #1

declare dso_local i32 @sk_msg_page(%struct.sk_msg*, i32) #1

declare dso_local i32 @sk_msg_iter_var_next(i32) #1

declare dso_local i32 @sk_psock_queue_msg(%struct.sk_psock*, %struct.sk_msg*) #1

declare dso_local i32 @sk_psock_data_ready(%struct.sock*, %struct.sk_psock*) #1

declare dso_local i32 @sk_msg_free(%struct.sock*, %struct.sk_msg*) #1

declare dso_local i32 @kfree(%struct.sk_msg*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

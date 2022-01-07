; ModuleID = '/home/carl/AnghaBench/linux/net/ieee802154/extr_header_ops.c_ieee802154_hdr_push.c'
source_filename = "/home/carl/AnghaBench/linux/net/ieee802154/extr_header_ops.c_ieee802154_hdr_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.ieee802154_hdr = type { i32, %struct.TYPE_2__, %struct.TYPE_2__, %struct.ieee802154_hdr_fc, %struct.ieee802154_hdr_fc }
%struct.TYPE_2__ = type { i64, i64 }
%struct.ieee802154_hdr_fc = type { i64, i64, i32, i32, i64 }

@IEEE802154_MAX_HEADER_LEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IEEE802154_ADDR_NONE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee802154_hdr_push(%struct.sk_buff* %0, %struct.ieee802154_hdr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ieee802154_hdr*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ieee802154_hdr_fc*, align 8
  %11 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.ieee802154_hdr* %1, %struct.ieee802154_hdr** %5, align 8
  %12 = load i32, i32* @IEEE802154_MAX_HEADER_LEN, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %6, align 8
  %15 = alloca %struct.ieee802154_hdr_fc, i64 %13, align 16
  store i64 %13, i64* %7, align 8
  store i32 2, i32* %8, align 4
  %16 = load %struct.ieee802154_hdr*, %struct.ieee802154_hdr** %5, align 8
  %17 = getelementptr inbounds %struct.ieee802154_hdr, %struct.ieee802154_hdr* %16, i32 0, i32 4
  store %struct.ieee802154_hdr_fc* %17, %struct.ieee802154_hdr_fc** %10, align 8
  %18 = load i32, i32* %8, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %8, align 4
  %20 = sext i32 %18 to i64
  %21 = getelementptr inbounds %struct.ieee802154_hdr_fc, %struct.ieee802154_hdr_fc* %15, i64 %20
  %22 = load %struct.ieee802154_hdr*, %struct.ieee802154_hdr** %5, align 8
  %23 = getelementptr inbounds %struct.ieee802154_hdr, %struct.ieee802154_hdr* %22, i32 0, i32 3
  %24 = bitcast %struct.ieee802154_hdr_fc* %21 to i8*
  %25 = bitcast %struct.ieee802154_hdr_fc* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %24, i8* align 8 %25, i64 32, i1 false)
  %26 = load %struct.ieee802154_hdr*, %struct.ieee802154_hdr** %5, align 8
  %27 = getelementptr inbounds %struct.ieee802154_hdr, %struct.ieee802154_hdr* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.ieee802154_hdr_fc*, %struct.ieee802154_hdr_fc** %10, align 8
  %31 = getelementptr inbounds %struct.ieee802154_hdr_fc, %struct.ieee802154_hdr_fc* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.ieee802154_hdr_fc, %struct.ieee802154_hdr_fc* %15, i64 %33
  %35 = load %struct.ieee802154_hdr*, %struct.ieee802154_hdr** %5, align 8
  %36 = getelementptr inbounds %struct.ieee802154_hdr, %struct.ieee802154_hdr* %35, i32 0, i32 2
  %37 = call i32 @ieee802154_hdr_push_addr(%struct.ieee802154_hdr_fc* %34, %struct.TYPE_2__* %36, i32 0)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %2
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %122

43:                                               ; preds = %2
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %8, align 4
  %46 = add nsw i32 %45, %44
  store i32 %46, i32* %8, align 4
  %47 = load %struct.ieee802154_hdr*, %struct.ieee802154_hdr** %5, align 8
  %48 = getelementptr inbounds %struct.ieee802154_hdr, %struct.ieee802154_hdr* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.ieee802154_hdr_fc*, %struct.ieee802154_hdr_fc** %10, align 8
  %52 = getelementptr inbounds %struct.ieee802154_hdr_fc, %struct.ieee802154_hdr_fc* %51, i32 0, i32 1
  store i64 %50, i64* %52, align 8
  %53 = load %struct.ieee802154_hdr*, %struct.ieee802154_hdr** %5, align 8
  %54 = getelementptr inbounds %struct.ieee802154_hdr, %struct.ieee802154_hdr* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.ieee802154_hdr*, %struct.ieee802154_hdr** %5, align 8
  %58 = getelementptr inbounds %struct.ieee802154_hdr, %struct.ieee802154_hdr* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %56, %60
  br i1 %61, label %62, label %72

62:                                               ; preds = %43
  %63 = load %struct.ieee802154_hdr*, %struct.ieee802154_hdr** %5, align 8
  %64 = getelementptr inbounds %struct.ieee802154_hdr, %struct.ieee802154_hdr* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @IEEE802154_ADDR_NONE, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %62
  %70 = load %struct.ieee802154_hdr_fc*, %struct.ieee802154_hdr_fc** %10, align 8
  %71 = getelementptr inbounds %struct.ieee802154_hdr_fc, %struct.ieee802154_hdr_fc* %70, i32 0, i32 2
  store i32 1, i32* %71, align 8
  br label %72

72:                                               ; preds = %69, %62, %43
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.ieee802154_hdr_fc, %struct.ieee802154_hdr_fc* %15, i64 %74
  %76 = load %struct.ieee802154_hdr*, %struct.ieee802154_hdr** %5, align 8
  %77 = getelementptr inbounds %struct.ieee802154_hdr, %struct.ieee802154_hdr* %76, i32 0, i32 1
  %78 = load %struct.ieee802154_hdr_fc*, %struct.ieee802154_hdr_fc** %10, align 8
  %79 = getelementptr inbounds %struct.ieee802154_hdr_fc, %struct.ieee802154_hdr_fc* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @ieee802154_hdr_push_addr(%struct.ieee802154_hdr_fc* %75, %struct.TYPE_2__* %77, i32 %80)
  store i32 %81, i32* %9, align 4
  %82 = load i32, i32* %9, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %72
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %122

87:                                               ; preds = %72
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* %8, align 4
  %90 = add nsw i32 %89, %88
  store i32 %90, i32* %8, align 4
  %91 = load %struct.ieee802154_hdr_fc*, %struct.ieee802154_hdr_fc** %10, align 8
  %92 = getelementptr inbounds %struct.ieee802154_hdr_fc, %struct.ieee802154_hdr_fc* %91, i32 0, i32 4
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %113

95:                                               ; preds = %87
  %96 = load %struct.ieee802154_hdr_fc*, %struct.ieee802154_hdr_fc** %10, align 8
  %97 = getelementptr inbounds %struct.ieee802154_hdr_fc, %struct.ieee802154_hdr_fc* %96, i32 0, i32 3
  store i32 1, i32* %97, align 4
  %98 = load i32, i32* %8, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.ieee802154_hdr_fc, %struct.ieee802154_hdr_fc* %15, i64 %99
  %101 = load %struct.ieee802154_hdr*, %struct.ieee802154_hdr** %5, align 8
  %102 = getelementptr inbounds %struct.ieee802154_hdr, %struct.ieee802154_hdr* %101, i32 0, i32 0
  %103 = call i32 @ieee802154_hdr_push_sechdr(%struct.ieee802154_hdr_fc* %100, i32* %102)
  store i32 %103, i32* %9, align 4
  %104 = load i32, i32* %9, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %95
  %107 = load i32, i32* @EINVAL, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %122

109:                                              ; preds = %95
  %110 = load i32, i32* %9, align 4
  %111 = load i32, i32* %8, align 4
  %112 = add nsw i32 %111, %110
  store i32 %112, i32* %8, align 4
  br label %113

113:                                              ; preds = %109, %87
  %114 = load %struct.ieee802154_hdr_fc*, %struct.ieee802154_hdr_fc** %10, align 8
  %115 = call i32 @memcpy(%struct.ieee802154_hdr_fc* %15, %struct.ieee802154_hdr_fc* %114, i32 2)
  %116 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %117 = load i32, i32* %8, align 4
  %118 = call %struct.ieee802154_hdr_fc* @skb_push(%struct.sk_buff* %116, i32 %117)
  %119 = load i32, i32* %8, align 4
  %120 = call i32 @memcpy(%struct.ieee802154_hdr_fc* %118, %struct.ieee802154_hdr_fc* %15, i32 %119)
  %121 = load i32, i32* %8, align 4
  store i32 %121, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %122

122:                                              ; preds = %113, %106, %84, %40
  %123 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %123)
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ieee802154_hdr_push_addr(%struct.ieee802154_hdr_fc*, %struct.TYPE_2__*, i32) #3

declare dso_local i32 @ieee802154_hdr_push_sechdr(%struct.ieee802154_hdr_fc*, i32*) #3

declare dso_local i32 @memcpy(%struct.ieee802154_hdr_fc*, %struct.ieee802154_hdr_fc*, i32) #3

declare dso_local %struct.ieee802154_hdr_fc* @skb_push(%struct.sk_buff*, i32) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

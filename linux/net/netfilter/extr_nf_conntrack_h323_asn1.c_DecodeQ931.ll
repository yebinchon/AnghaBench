; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_h323_asn1.c_DecodeQ931.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_h323_asn1.c_DecodeQ931.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@H323_ERROR_BOUND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Unknown Protocol Discriminator\0A\00", align 1
@H323_ERROR_RANGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"MessageType = %02X\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Q.931 UUIE not found\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DecodeQ931(i8* %0, i64 %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %7, align 8
  %10 = load i8*, i8** %5, align 8
  store i8* %10, i8** %8, align 8
  %11 = load i8*, i8** %8, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i64, i64* %6, align 8
  %15 = icmp ult i64 %14, 1
  br i1 %15, label %16, label %18

16:                                               ; preds = %13, %3
  %17 = load i32, i32* @H323_ERROR_BOUND, align 4
  store i32 %17, i32* %4, align 4
  br label %161

18:                                               ; preds = %13
  %19 = load i8*, i8** %8, align 8
  %20 = load i8, i8* %19, align 1
  %21 = zext i8 %20 to i32
  %22 = icmp ne i32 %21, 8
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = call i32 (i8*, ...) @PRINT(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @H323_ERROR_RANGE, align 4
  store i32 %25, i32* %4, align 4
  br label %161

26:                                               ; preds = %18
  %27 = load i8*, i8** %8, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %8, align 8
  %29 = load i64, i64* %6, align 8
  %30 = add i64 %29, -1
  store i64 %30, i64* %6, align 8
  %31 = load i64, i64* %6, align 8
  %32 = icmp ult i64 %31, 1
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load i32, i32* @H323_ERROR_BOUND, align 4
  store i32 %34, i32* %4, align 4
  br label %161

35:                                               ; preds = %26
  %36 = load i8*, i8** %8, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %8, align 8
  %38 = load i8, i8* %36, align 1
  %39 = zext i8 %38 to i32
  store i32 %39, i32* %9, align 4
  %40 = load i64, i64* %6, align 8
  %41 = add i64 %40, -1
  store i64 %41, i64* %6, align 8
  %42 = load i64, i64* %6, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = icmp ult i64 %42, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %35
  %47 = load i32, i32* @H323_ERROR_BOUND, align 4
  store i32 %47, i32* %4, align 4
  br label %161

48:                                               ; preds = %35
  %49 = load i32, i32* %9, align 4
  %50 = load i8*, i8** %8, align 8
  %51 = sext i32 %49 to i64
  %52 = getelementptr inbounds i8, i8* %50, i64 %51
  store i8* %52, i8** %8, align 8
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = load i64, i64* %6, align 8
  %56 = sub i64 %55, %54
  store i64 %56, i64* %6, align 8
  %57 = load i64, i64* %6, align 8
  %58 = icmp ult i64 %57, 2
  br i1 %58, label %59, label %61

59:                                               ; preds = %48
  %60 = load i32, i32* @H323_ERROR_BOUND, align 4
  store i32 %60, i32* %4, align 4
  br label %161

61:                                               ; preds = %48
  %62 = load i8*, i8** %8, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %8, align 8
  %64 = load i8, i8* %62, align 1
  %65 = zext i8 %64 to i32
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load i64, i64* %6, align 8
  %69 = add i64 %68, -1
  store i64 %69, i64* %6, align 8
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 (i8*, ...) @PRINT(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %72)
  %74 = load i8*, i8** %8, align 8
  %75 = load i8, i8* %74, align 1
  %76 = zext i8 %75 to i32
  %77 = and i32 %76, 128
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %61
  %80 = load i8*, i8** %8, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %8, align 8
  %82 = load i64, i64* %6, align 8
  %83 = add i64 %82, -1
  store i64 %83, i64* %6, align 8
  br label %84

84:                                               ; preds = %79, %61
  br label %85

85:                                               ; preds = %149, %84
  %86 = load i64, i64* %6, align 8
  %87 = icmp ugt i64 %86, 0
  br i1 %87, label %88, label %158

88:                                               ; preds = %85
  %89 = load i8*, i8** %8, align 8
  %90 = load i8, i8* %89, align 1
  %91 = zext i8 %90 to i32
  %92 = icmp eq i32 %91, 126
  br i1 %92, label %93, label %129

93:                                               ; preds = %88
  %94 = load i64, i64* %6, align 8
  %95 = icmp ult i64 %94, 3
  br i1 %95, label %96, label %97

96:                                               ; preds = %93
  br label %158

97:                                               ; preds = %93
  %98 = load i8*, i8** %8, align 8
  %99 = getelementptr inbounds i8, i8* %98, i32 1
  store i8* %99, i8** %8, align 8
  %100 = load i8*, i8** %8, align 8
  %101 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %101, i8** %8, align 8
  %102 = load i8, i8* %100, align 1
  %103 = zext i8 %102 to i32
  %104 = shl i32 %103, 8
  store i32 %104, i32* %9, align 4
  %105 = load i8*, i8** %8, align 8
  %106 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %106, i8** %8, align 8
  %107 = load i8, i8* %105, align 1
  %108 = zext i8 %107 to i32
  %109 = load i32, i32* %9, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %9, align 4
  %111 = load i64, i64* %6, align 8
  %112 = sub i64 %111, 3
  store i64 %112, i64* %6, align 8
  %113 = load i64, i64* %6, align 8
  %114 = load i32, i32* %9, align 4
  %115 = sext i32 %114 to i64
  %116 = icmp ult i64 %113, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %97
  br label %158

118:                                              ; preds = %97
  %119 = load i8*, i8** %8, align 8
  %120 = getelementptr inbounds i8, i8* %119, i32 1
  store i8* %120, i8** %8, align 8
  %121 = load i32, i32* %9, align 4
  %122 = add nsw i32 %121, -1
  store i32 %122, i32* %9, align 4
  %123 = load i8*, i8** %5, align 8
  %124 = load i8*, i8** %8, align 8
  %125 = load i32, i32* %9, align 4
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 0
  %128 = call i32 @DecodeH323_UserInformation(i8* %123, i8* %124, i32 %125, i32* %127)
  store i32 %128, i32* %4, align 4
  br label %161

129:                                              ; preds = %88
  %130 = load i8*, i8** %8, align 8
  %131 = getelementptr inbounds i8, i8* %130, i32 1
  store i8* %131, i8** %8, align 8
  %132 = load i64, i64* %6, align 8
  %133 = add i64 %132, -1
  store i64 %133, i64* %6, align 8
  %134 = load i64, i64* %6, align 8
  %135 = icmp ult i64 %134, 1
  br i1 %135, label %136, label %137

136:                                              ; preds = %129
  br label %158

137:                                              ; preds = %129
  %138 = load i8*, i8** %8, align 8
  %139 = getelementptr inbounds i8, i8* %138, i32 1
  store i8* %139, i8** %8, align 8
  %140 = load i8, i8* %138, align 1
  %141 = zext i8 %140 to i32
  store i32 %141, i32* %9, align 4
  %142 = load i64, i64* %6, align 8
  %143 = add i64 %142, -1
  store i64 %143, i64* %6, align 8
  %144 = load i64, i64* %6, align 8
  %145 = load i32, i32* %9, align 4
  %146 = sext i32 %145 to i64
  %147 = icmp ult i64 %144, %146
  br i1 %147, label %148, label %149

148:                                              ; preds = %137
  br label %158

149:                                              ; preds = %137
  %150 = load i32, i32* %9, align 4
  %151 = load i8*, i8** %8, align 8
  %152 = sext i32 %150 to i64
  %153 = getelementptr inbounds i8, i8* %151, i64 %152
  store i8* %153, i8** %8, align 8
  %154 = load i32, i32* %9, align 4
  %155 = sext i32 %154 to i64
  %156 = load i64, i64* %6, align 8
  %157 = sub i64 %156, %155
  store i64 %157, i64* %6, align 8
  br label %85

158:                                              ; preds = %148, %136, %117, %96, %85
  %159 = call i32 (i8*, ...) @PRINT(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %160 = load i32, i32* @H323_ERROR_BOUND, align 4
  store i32 %160, i32* %4, align 4
  br label %161

161:                                              ; preds = %158, %118, %59, %46, %33, %23, %16
  %162 = load i32, i32* %4, align 4
  ret i32 %162
}

declare dso_local i32 @PRINT(i8*, ...) #1

declare dso_local i32 @DecodeH323_UserInformation(i8*, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

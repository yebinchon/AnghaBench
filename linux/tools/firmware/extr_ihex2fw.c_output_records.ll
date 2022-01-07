; ModuleID = '/home/carl/AnghaBench/linux/tools/firmware/extr_ihex2fw.c_output_records.c'
source_filename = "/home/carl/AnghaBench/linux/tools/firmware/extr_ihex2fw.c_output_records.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ihex_binrec = type { i8, %struct.ihex_binrec*, i32 }

@records = common dso_local global %struct.ihex_binrec* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @output_records to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @output_records(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [6 x i8], align 1
  %5 = alloca %struct.ihex_binrec*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %7 = bitcast [6 x i8]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %7, i8 0, i64 6, i1 false)
  %8 = load %struct.ihex_binrec*, %struct.ihex_binrec** @records, align 8
  store %struct.ihex_binrec* %8, %struct.ihex_binrec** %5, align 8
  br label %9

9:                                                ; preds = %38, %1
  %10 = load %struct.ihex_binrec*, %struct.ihex_binrec** %5, align 8
  %11 = icmp ne %struct.ihex_binrec* %10, null
  br i1 %11, label %12, label %42

12:                                               ; preds = %9
  %13 = load %struct.ihex_binrec*, %struct.ihex_binrec** %5, align 8
  %14 = call i32 @ihex_binrec_size(%struct.ihex_binrec* %13)
  %15 = call i64 @ALIGN(i32 %14, i32 4)
  store i64 %15, i64* %6, align 8
  %16 = load %struct.ihex_binrec*, %struct.ihex_binrec** %5, align 8
  %17 = getelementptr inbounds %struct.ihex_binrec, %struct.ihex_binrec* %16, i32 0, i32 0
  %18 = load i8, i8* %17, align 8
  %19 = call zeroext i8 @htonl(i8 zeroext %18)
  %20 = load %struct.ihex_binrec*, %struct.ihex_binrec** %5, align 8
  %21 = getelementptr inbounds %struct.ihex_binrec, %struct.ihex_binrec* %20, i32 0, i32 0
  store i8 %19, i8* %21, align 8
  %22 = load %struct.ihex_binrec*, %struct.ihex_binrec** %5, align 8
  %23 = getelementptr inbounds %struct.ihex_binrec, %struct.ihex_binrec* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @htons(i32 %24)
  %26 = load %struct.ihex_binrec*, %struct.ihex_binrec** %5, align 8
  %27 = getelementptr inbounds %struct.ihex_binrec, %struct.ihex_binrec* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* %3, align 4
  %29 = load %struct.ihex_binrec*, %struct.ihex_binrec** %5, align 8
  %30 = getelementptr inbounds %struct.ihex_binrec, %struct.ihex_binrec* %29, i32 0, i32 0
  %31 = load i64, i64* %6, align 8
  %32 = trunc i64 %31 to i32
  %33 = call i32 @write(i32 %28, i8* %30, i32 %32)
  %34 = sext i32 %33 to i64
  %35 = load i64, i64* %6, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %12
  store i32 1, i32* %2, align 4
  br label %49

38:                                               ; preds = %12
  %39 = load %struct.ihex_binrec*, %struct.ihex_binrec** %5, align 8
  %40 = getelementptr inbounds %struct.ihex_binrec, %struct.ihex_binrec* %39, i32 0, i32 1
  %41 = load %struct.ihex_binrec*, %struct.ihex_binrec** %40, align 8
  store %struct.ihex_binrec* %41, %struct.ihex_binrec** %5, align 8
  br label %9

42:                                               ; preds = %9
  %43 = load i32, i32* %3, align 4
  %44 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i64 0, i64 0
  %45 = call i32 @write(i32 %43, i8* %44, i32 6)
  %46 = icmp ne i32 %45, 6
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  store i32 1, i32* %2, align 4
  br label %49

48:                                               ; preds = %42
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %48, %47, %37
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @ALIGN(i32, i32) #2

declare dso_local i32 @ihex_binrec_size(%struct.ihex_binrec*) #2

declare dso_local zeroext i8 @htonl(i8 zeroext) #2

declare dso_local i32 @htons(i32) #2

declare dso_local i32 @write(i32, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

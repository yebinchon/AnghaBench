; ModuleID = '/home/carl/AnghaBench/linux/fs/udf/extr_misc.c_udf_new_tag.c'
source_filename = "/home/carl/AnghaBench/linux/fs/udf/extr_misc.c_udf_new_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tag = type { i32, i8*, i8*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @udf_new_tag(i8* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.tag*, align 8
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %14 = load i8*, i8** %7, align 8
  %15 = bitcast i8* %14 to %struct.tag*
  store %struct.tag* %15, %struct.tag** %13, align 8
  %16 = load i32, i32* %8, align 4
  %17 = call i8* @cpu_to_le16(i32 %16)
  %18 = load %struct.tag*, %struct.tag** %13, align 8
  %19 = getelementptr inbounds %struct.tag, %struct.tag* %18, i32 0, i32 3
  store i8* %17, i8** %19, align 8
  %20 = load i32, i32* %9, align 4
  %21 = call i8* @cpu_to_le16(i32 %20)
  %22 = load %struct.tag*, %struct.tag** %13, align 8
  %23 = getelementptr inbounds %struct.tag, %struct.tag* %22, i32 0, i32 2
  store i8* %21, i8** %23, align 8
  %24 = load i32, i32* %10, align 4
  %25 = call i8* @cpu_to_le16(i32 %24)
  %26 = load %struct.tag*, %struct.tag** %13, align 8
  %27 = getelementptr inbounds %struct.tag, %struct.tag* %26, i32 0, i32 1
  store i8* %25, i8** %27, align 8
  %28 = load i32, i32* %11, align 4
  %29 = call i32 @cpu_to_le32(i32 %28)
  %30 = load %struct.tag*, %struct.tag** %13, align 8
  %31 = getelementptr inbounds %struct.tag, %struct.tag* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = load i32, i32* %12, align 4
  %34 = call i32 @udf_update_tag(i8* %32, i32 %33)
  ret void
}

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @udf_update_tag(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_data-convert-bt.c_create_int_type.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_data-convert-bt.c_create_int_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bt_ctf_field_type = type { i32 }

@BT_CTF_INTEGER_BASE_HEXADECIMAL = common dso_local global i32 0, align 4
@BT_CTF_BYTE_ORDER_BIG_ENDIAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Created type: INTEGER %d-bit %ssigned %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"un\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"hex\00", align 1
@BT_CTF_BYTE_ORDER_LITTLE_ENDIAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bt_ctf_field_type* (i32, i32, i32)* @create_int_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bt_ctf_field_type* @create_int_type(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.bt_ctf_field_type*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.bt_ctf_field_type*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call %struct.bt_ctf_field_type* @bt_ctf_field_type_integer_create(i32 %9)
  store %struct.bt_ctf_field_type* %10, %struct.bt_ctf_field_type** %8, align 8
  %11 = load %struct.bt_ctf_field_type*, %struct.bt_ctf_field_type** %8, align 8
  %12 = icmp ne %struct.bt_ctf_field_type* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store %struct.bt_ctf_field_type* null, %struct.bt_ctf_field_type** %4, align 8
  br label %49

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %14
  %18 = load %struct.bt_ctf_field_type*, %struct.bt_ctf_field_type** %8, align 8
  %19 = call i64 @bt_ctf_field_type_integer_set_signed(%struct.bt_ctf_field_type* %18, i32 1)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  br label %46

22:                                               ; preds = %17, %14
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %22
  %26 = load %struct.bt_ctf_field_type*, %struct.bt_ctf_field_type** %8, align 8
  %27 = load i32, i32* @BT_CTF_INTEGER_BASE_HEXADECIMAL, align 4
  %28 = call i64 @bt_ctf_field_type_integer_set_base(%struct.bt_ctf_field_type* %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %46

31:                                               ; preds = %25, %22
  %32 = load %struct.bt_ctf_field_type*, %struct.bt_ctf_field_type** %8, align 8
  %33 = load i32, i32* @BT_CTF_BYTE_ORDER_BIG_ENDIAN, align 4
  %34 = call i32 @bt_ctf_field_type_set_byte_order(%struct.bt_ctf_field_type* %32, i32 %33)
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %44 = call i32 @pr2(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %35, i8* %39, i8* %43)
  %45 = load %struct.bt_ctf_field_type*, %struct.bt_ctf_field_type** %8, align 8
  store %struct.bt_ctf_field_type* %45, %struct.bt_ctf_field_type** %4, align 8
  br label %49

46:                                               ; preds = %30, %21
  %47 = load %struct.bt_ctf_field_type*, %struct.bt_ctf_field_type** %8, align 8
  %48 = call i32 @bt_ctf_field_type_put(%struct.bt_ctf_field_type* %47)
  store %struct.bt_ctf_field_type* null, %struct.bt_ctf_field_type** %4, align 8
  br label %49

49:                                               ; preds = %46, %31, %13
  %50 = load %struct.bt_ctf_field_type*, %struct.bt_ctf_field_type** %4, align 8
  ret %struct.bt_ctf_field_type* %50
}

declare dso_local %struct.bt_ctf_field_type* @bt_ctf_field_type_integer_create(i32) #1

declare dso_local i64 @bt_ctf_field_type_integer_set_signed(%struct.bt_ctf_field_type*, i32) #1

declare dso_local i64 @bt_ctf_field_type_integer_set_base(%struct.bt_ctf_field_type*, i32) #1

declare dso_local i32 @bt_ctf_field_type_set_byte_order(%struct.bt_ctf_field_type*, i32) #1

declare dso_local i32 @pr2(i8*, i32, i8*, i8*) #1

declare dso_local i32 @bt_ctf_field_type_put(%struct.bt_ctf_field_type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

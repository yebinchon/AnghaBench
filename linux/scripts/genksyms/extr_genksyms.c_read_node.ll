; ModuleID = '/home/carl/AnghaBench/linux/scripts/genksyms/extr_genksyms.c_read_node.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/genksyms/extr_genksyms.c_read_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.string_list = type { i8*, i64 }

@SYM_NORMAL = common dso_local global i64 0, align 8
@EOF = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Token too long\0A\00", align 1
@symbol_types = common dso_local global %struct.TYPE_3__* null, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"Unknown type %c\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.string_list* (i32*)* @read_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.string_list* @read_node(i32* %0) #0 {
  %2 = alloca %struct.string_list*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca [256 x i8], align 16
  %5 = alloca %struct.string_list, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  %9 = getelementptr inbounds %struct.string_list, %struct.string_list* %5, i32 0, i32 0
  %10 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  store i8* %10, i8** %9, align 8
  %11 = getelementptr inbounds %struct.string_list, %struct.string_list* %5, i32 0, i32 1
  %12 = load i64, i64* @SYM_NORMAL, align 8
  store i64 %12, i64* %11, align 8
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %65, %29, %1
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @fgetc(i32* %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* @EOF, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %71

18:                                               ; preds = %13
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %31, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* %6, align 4
  %23 = icmp eq i32 %22, 32
  br i1 %23, label %24, label %31

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.string_list, %struct.string_list* %5, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %28 = icmp eq i8* %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %13

30:                                               ; preds = %24
  br label %71

31:                                               ; preds = %21, %18
  %32 = load i32, i32* %6, align 4
  %33 = icmp eq i32 %32, 34
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %7, align 4
  br label %53

39:                                               ; preds = %31
  %40 = load i32, i32* %6, align 4
  %41 = icmp eq i32 %40, 10
  br i1 %41, label %42, label %52

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.string_list, %struct.string_list* %5, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %46 = icmp eq i8* %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  store %struct.string_list* null, %struct.string_list** %2, align 8
  br label %128

48:                                               ; preds = %42
  %49 = load i32, i32* %6, align 4
  %50 = load i32*, i32** %3, align 8
  %51 = call i32 @ungetc(i32 %49, i32* %50)
  br label %71

52:                                               ; preds = %39
  br label %53

53:                                               ; preds = %52, %34
  br label %54

54:                                               ; preds = %53
  %55 = getelementptr inbounds %struct.string_list, %struct.string_list* %5, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %58 = getelementptr inbounds i8, i8* %57, i64 256
  %59 = getelementptr inbounds i8, i8* %58, i64 -1
  %60 = icmp uge i8* %56, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %54
  %62 = load i32, i32* @stderr, align 4
  %63 = call i32 (i32, i8*, ...) @fprintf(i32 %62, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %64 = call i32 @exit(i32 1) #3
  unreachable

65:                                               ; preds = %54
  %66 = load i32, i32* %6, align 4
  %67 = trunc i32 %66 to i8
  %68 = getelementptr inbounds %struct.string_list, %struct.string_list* %5, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %68, align 8
  store i8 %67, i8* %69, align 1
  br label %13

71:                                               ; preds = %48, %30, %13
  %72 = getelementptr inbounds %struct.string_list, %struct.string_list* %5, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %75 = icmp eq i8* %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  store %struct.string_list* null, %struct.string_list** %2, align 8
  br label %128

77:                                               ; preds = %71
  %78 = getelementptr inbounds %struct.string_list, %struct.string_list* %5, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  store i8 0, i8* %79, align 1
  %80 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %81 = getelementptr inbounds %struct.string_list, %struct.string_list* %5, i32 0, i32 0
  store i8* %80, i8** %81, align 8
  %82 = getelementptr inbounds %struct.string_list, %struct.string_list* %5, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 1
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %86, 35
  br i1 %87, label %88, label %126

88:                                               ; preds = %77
  store i64 0, i64* %8, align 8
  br label %89

89:                                               ; preds = %114, %88
  %90 = load i64, i64* %8, align 8
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** @symbol_types, align 8
  %92 = call i64 @ARRAY_SIZE(%struct.TYPE_3__* %91)
  %93 = icmp ult i64 %90, %92
  br i1 %93, label %94, label %117

94:                                               ; preds = %89
  %95 = getelementptr inbounds %struct.string_list, %struct.string_list* %5, i32 0, i32 0
  %96 = load i8*, i8** %95, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 0
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i64
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** @symbol_types, align 8
  %101 = load i64, i64* %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp eq i64 %99, %104
  br i1 %105, label %106, label %113

106:                                              ; preds = %94
  %107 = load i64, i64* %8, align 8
  %108 = getelementptr inbounds %struct.string_list, %struct.string_list* %5, i32 0, i32 1
  store i64 %107, i64* %108, align 8
  %109 = getelementptr inbounds %struct.string_list, %struct.string_list* %5, i32 0, i32 0
  %110 = load i8*, i8** %109, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 2
  store i8* %111, i8** %109, align 8
  %112 = call %struct.string_list* @copy_node(%struct.string_list* %5)
  store %struct.string_list* %112, %struct.string_list** %2, align 8
  br label %128

113:                                              ; preds = %94
  br label %114

114:                                              ; preds = %113
  %115 = load i64, i64* %8, align 8
  %116 = add i64 %115, 1
  store i64 %116, i64* %8, align 8
  br label %89

117:                                              ; preds = %89
  %118 = load i32, i32* @stderr, align 4
  %119 = getelementptr inbounds %struct.string_list, %struct.string_list* %5, i32 0, i32 0
  %120 = load i8*, i8** %119, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 0
  %122 = load i8, i8* %121, align 1
  %123 = sext i8 %122 to i32
  %124 = call i32 (i32, i8*, ...) @fprintf(i32 %118, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %123)
  %125 = call i32 @exit(i32 1) #3
  unreachable

126:                                              ; preds = %77
  %127 = call %struct.string_list* @copy_node(%struct.string_list* %5)
  store %struct.string_list* %127, %struct.string_list** %2, align 8
  br label %128

128:                                              ; preds = %126, %106, %76, %47
  %129 = load %struct.string_list*, %struct.string_list** %2, align 8
  ret %struct.string_list* %129
}

declare dso_local i32 @fgetc(i32*) #1

declare dso_local i32 @ungetc(i32, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local %struct.string_list* @copy_node(%struct.string_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

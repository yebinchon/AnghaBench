; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_gss_generic_token.c_g_verify_token_header.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_gss_generic_token.c_g_verify_token_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_netobj = type { i32, i8* }

@G_BAD_TOK_HEADER = common dso_local global i32 0, align 4
@G_WRONG_MECH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @g_verify_token_header(%struct.xdr_netobj* %0, i32* %1, i8** %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.xdr_netobj*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.xdr_netobj, align 8
  %13 = alloca i32, align 4
  store %struct.xdr_netobj* %0, %struct.xdr_netobj** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i8**, i8*** %8, align 8
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %10, align 8
  store i32 0, i32* %13, align 4
  %16 = load i32, i32* %9, align 4
  %17 = sub nsw i32 %16, 1
  store i32 %17, i32* %9, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* @G_BAD_TOK_HEADER, align 4
  store i32 %20, i32* %5, align 4
  br label %107

21:                                               ; preds = %4
  %22 = load i8*, i8** %10, align 8
  %23 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %23, i8** %10, align 8
  %24 = load i8, i8* %22, align 1
  %25 = zext i8 %24 to i32
  %26 = icmp ne i32 %25, 96
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i32, i32* @G_BAD_TOK_HEADER, align 4
  store i32 %28, i32* %5, align 4
  br label %107

29:                                               ; preds = %21
  %30 = call i32 @der_read_length(i8** %10, i32* %9)
  store i32 %30, i32* %11, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = load i32, i32* @G_BAD_TOK_HEADER, align 4
  store i32 %33, i32* %5, align 4
  br label %107

34:                                               ; preds = %29
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i32, i32* @G_BAD_TOK_HEADER, align 4
  store i32 %39, i32* %5, align 4
  br label %107

40:                                               ; preds = %34
  %41 = load i32, i32* %9, align 4
  %42 = sub nsw i32 %41, 1
  store i32 %42, i32* %9, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load i32, i32* @G_BAD_TOK_HEADER, align 4
  store i32 %45, i32* %5, align 4
  br label %107

46:                                               ; preds = %40
  %47 = load i8*, i8** %10, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %10, align 8
  %49 = load i8, i8* %47, align 1
  %50 = zext i8 %49 to i32
  %51 = icmp ne i32 %50, 6
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = load i32, i32* @G_BAD_TOK_HEADER, align 4
  store i32 %53, i32* %5, align 4
  br label %107

54:                                               ; preds = %46
  %55 = load i32, i32* %9, align 4
  %56 = sub nsw i32 %55, 1
  store i32 %56, i32* %9, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = load i32, i32* @G_BAD_TOK_HEADER, align 4
  store i32 %59, i32* %5, align 4
  br label %107

60:                                               ; preds = %54
  %61 = load i8*, i8** %10, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %10, align 8
  %63 = load i8, i8* %61, align 1
  %64 = zext i8 %63 to i32
  %65 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %12, i32 0, i32 0
  store i32 %64, i32* %65, align 8
  %66 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %12, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %9, align 4
  %69 = sub nsw i32 %68, %67
  store i32 %69, i32* %9, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %60
  %72 = load i32, i32* @G_BAD_TOK_HEADER, align 4
  store i32 %72, i32* %5, align 4
  br label %107

73:                                               ; preds = %60
  %74 = load i8*, i8** %10, align 8
  %75 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %12, i32 0, i32 1
  store i8* %74, i8** %75, align 8
  %76 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %12, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i8*, i8** %10, align 8
  %79 = sext i32 %77 to i64
  %80 = getelementptr inbounds i8, i8* %78, i64 %79
  store i8* %80, i8** %10, align 8
  %81 = load %struct.xdr_netobj*, %struct.xdr_netobj** %6, align 8
  %82 = call i32 @g_OID_equal(%struct.xdr_netobj* %12, %struct.xdr_netobj* %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %86, label %84

84:                                               ; preds = %73
  %85 = load i32, i32* @G_WRONG_MECH, align 4
  store i32 %85, i32* %13, align 4
  br label %86

86:                                               ; preds = %84, %73
  %87 = load i32, i32* %9, align 4
  %88 = sub nsw i32 %87, 2
  store i32 %88, i32* %9, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %86
  %91 = load i32, i32* @G_BAD_TOK_HEADER, align 4
  store i32 %91, i32* %5, align 4
  br label %107

92:                                               ; preds = %86
  %93 = load i32, i32* %13, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %92
  %96 = load i32, i32* %13, align 4
  store i32 %96, i32* %5, align 4
  br label %107

97:                                               ; preds = %92
  %98 = load i32, i32* %13, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %105, label %100

100:                                              ; preds = %97
  %101 = load i8*, i8** %10, align 8
  %102 = load i8**, i8*** %8, align 8
  store i8* %101, i8** %102, align 8
  %103 = load i32, i32* %9, align 4
  %104 = load i32*, i32** %7, align 8
  store i32 %103, i32* %104, align 4
  br label %105

105:                                              ; preds = %100, %97
  %106 = load i32, i32* %13, align 4
  store i32 %106, i32* %5, align 4
  br label %107

107:                                              ; preds = %105, %95, %90, %71, %58, %52, %44, %38, %32, %27, %19
  %108 = load i32, i32* %5, align 4
  ret i32 %108
}

declare dso_local i32 @der_read_length(i8**, i32*) #1

declare dso_local i32 @g_OID_equal(%struct.xdr_netobj*, %struct.xdr_netobj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

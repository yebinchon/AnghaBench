; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/radix-tree/extr_......libxarray.c_xas_find.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/radix-tree/extr_......libxarray.c_xas_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32 }
%struct.xa_state = type { i32, i32, %struct.TYPE_8__*, i32 }

@XA_CHUNK_MASK = common dso_local global i32 0, align 4
@XA_CHUNK_SIZE = common dso_local global i64 0, align 8
@XAS_BOUNDS = common dso_local global %struct.TYPE_8__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xas_find(%struct.xa_state* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.xa_state*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store %struct.xa_state* %0, %struct.xa_state** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.xa_state*, %struct.xa_state** %4, align 8
  %8 = call i64 @xas_error(%struct.xa_state* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %160

11:                                               ; preds = %2
  %12 = load %struct.xa_state*, %struct.xa_state** %4, align 8
  %13 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %12, i32 0, i32 2
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %15 = icmp ne %struct.TYPE_8__* %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %11
  %17 = load %struct.xa_state*, %struct.xa_state** %4, align 8
  %18 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %17, i32 0, i32 0
  store i32 1, i32* %18, align 8
  %19 = load %struct.xa_state*, %struct.xa_state** %4, align 8
  %20 = call i8* @set_bounds(%struct.xa_state* %19)
  store i8* %20, i8** %3, align 8
  br label %160

21:                                               ; preds = %11
  %22 = load %struct.xa_state*, %struct.xa_state** %4, align 8
  %23 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %22, i32 0, i32 2
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = call i64 @xas_top(%struct.TYPE_8__* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %41

27:                                               ; preds = %21
  %28 = load %struct.xa_state*, %struct.xa_state** %4, align 8
  %29 = call i8* @xas_load(%struct.xa_state* %28)
  store i8* %29, i8** %6, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %38, label %32

32:                                               ; preds = %27
  %33 = load %struct.xa_state*, %struct.xa_state** %4, align 8
  %34 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %33, i32 0, i32 2
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = call i64 @xas_not_node(%struct.TYPE_8__* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %32, %27
  %39 = load i8*, i8** %6, align 8
  store i8* %39, i8** %3, align 8
  br label %160

40:                                               ; preds = %32
  br label %69

41:                                               ; preds = %21
  %42 = load %struct.xa_state*, %struct.xa_state** %4, align 8
  %43 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %42, i32 0, i32 2
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %68, label %48

48:                                               ; preds = %41
  %49 = load %struct.xa_state*, %struct.xa_state** %4, align 8
  %50 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.xa_state*, %struct.xa_state** %4, align 8
  %53 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @XA_CHUNK_MASK, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %51, %56
  br i1 %57, label %58, label %68

58:                                               ; preds = %48
  %59 = load %struct.xa_state*, %struct.xa_state** %4, align 8
  %60 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = sub nsw i32 %61, 1
  %63 = load i32, i32* @XA_CHUNK_MASK, align 4
  %64 = and i32 %62, %63
  %65 = add nsw i32 %64, 1
  %66 = load %struct.xa_state*, %struct.xa_state** %4, align 8
  %67 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  br label %68

68:                                               ; preds = %58, %48, %41
  br label %69

69:                                               ; preds = %68, %40
  br label %70

70:                                               ; preds = %69
  %71 = load %struct.xa_state*, %struct.xa_state** %4, align 8
  %72 = call i32 @xas_advance(%struct.xa_state* %71)
  br label %73

73:                                               ; preds = %147, %131, %97, %70
  %74 = load %struct.xa_state*, %struct.xa_state** %4, align 8
  %75 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %74, i32 0, i32 2
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %75, align 8
  %77 = icmp ne %struct.TYPE_8__* %76, null
  br i1 %77, label %78, label %85

78:                                               ; preds = %73
  %79 = load %struct.xa_state*, %struct.xa_state** %4, align 8
  %80 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = sext i32 %81 to i64
  %83 = load i64, i64* %5, align 8
  %84 = icmp ule i64 %82, %83
  br label %85

85:                                               ; preds = %78, %73
  %86 = phi i1 [ false, %73 ], [ %84, %78 ]
  br i1 %86, label %87, label %150

87:                                               ; preds = %85
  %88 = load %struct.xa_state*, %struct.xa_state** %4, align 8
  %89 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = sext i32 %90 to i64
  %92 = load i64, i64* @XA_CHUNK_SIZE, align 8
  %93 = icmp eq i64 %91, %92
  %94 = zext i1 %93 to i32
  %95 = call i64 @unlikely(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %116

97:                                               ; preds = %87
  %98 = load %struct.xa_state*, %struct.xa_state** %4, align 8
  %99 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %98, i32 0, i32 2
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = add nsw i64 %102, 1
  %104 = trunc i64 %103 to i32
  %105 = load %struct.xa_state*, %struct.xa_state** %4, align 8
  %106 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 4
  %107 = load %struct.xa_state*, %struct.xa_state** %4, align 8
  %108 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.xa_state*, %struct.xa_state** %4, align 8
  %111 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %110, i32 0, i32 2
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %111, align 8
  %113 = call %struct.TYPE_8__* @xa_parent(i32 %109, %struct.TYPE_8__* %112)
  %114 = load %struct.xa_state*, %struct.xa_state** %4, align 8
  %115 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %114, i32 0, i32 2
  store %struct.TYPE_8__* %113, %struct.TYPE_8__** %115, align 8
  br label %73

116:                                              ; preds = %87
  %117 = load %struct.xa_state*, %struct.xa_state** %4, align 8
  %118 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.xa_state*, %struct.xa_state** %4, align 8
  %121 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %120, i32 0, i32 2
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %121, align 8
  %123 = load %struct.xa_state*, %struct.xa_state** %4, align 8
  %124 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = sext i32 %125 to i64
  %127 = call i8* @xa_entry(i32 %119, %struct.TYPE_8__* %122, i64 %126)
  store i8* %127, i8** %6, align 8
  %128 = load i8*, i8** %6, align 8
  %129 = call i64 @xa_is_node(i8* %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %138

131:                                              ; preds = %116
  %132 = load i8*, i8** %6, align 8
  %133 = call %struct.TYPE_8__* @xa_to_node(i8* %132)
  %134 = load %struct.xa_state*, %struct.xa_state** %4, align 8
  %135 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %134, i32 0, i32 2
  store %struct.TYPE_8__* %133, %struct.TYPE_8__** %135, align 8
  %136 = load %struct.xa_state*, %struct.xa_state** %4, align 8
  %137 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %136, i32 0, i32 1
  store i32 0, i32* %137, align 4
  br label %73

138:                                              ; preds = %116
  %139 = load i8*, i8** %6, align 8
  %140 = icmp ne i8* %139, null
  br i1 %140, label %141, label %147

141:                                              ; preds = %138
  %142 = load i8*, i8** %6, align 8
  %143 = call i32 @xa_is_sibling(i8* %142)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %147, label %145

145:                                              ; preds = %141
  %146 = load i8*, i8** %6, align 8
  store i8* %146, i8** %3, align 8
  br label %160

147:                                              ; preds = %141, %138
  %148 = load %struct.xa_state*, %struct.xa_state** %4, align 8
  %149 = call i32 @xas_advance(%struct.xa_state* %148)
  br label %73

150:                                              ; preds = %85
  %151 = load %struct.xa_state*, %struct.xa_state** %4, align 8
  %152 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %151, i32 0, i32 2
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %152, align 8
  %154 = icmp ne %struct.TYPE_8__* %153, null
  br i1 %154, label %159, label %155

155:                                              ; preds = %150
  %156 = load %struct.TYPE_8__*, %struct.TYPE_8__** @XAS_BOUNDS, align 8
  %157 = load %struct.xa_state*, %struct.xa_state** %4, align 8
  %158 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %157, i32 0, i32 2
  store %struct.TYPE_8__* %156, %struct.TYPE_8__** %158, align 8
  br label %159

159:                                              ; preds = %155, %150
  store i8* null, i8** %3, align 8
  br label %160

160:                                              ; preds = %159, %145, %38, %16, %10
  %161 = load i8*, i8** %3, align 8
  ret i8* %161
}

declare dso_local i64 @xas_error(%struct.xa_state*) #1

declare dso_local i8* @set_bounds(%struct.xa_state*) #1

declare dso_local i64 @xas_top(%struct.TYPE_8__*) #1

declare dso_local i8* @xas_load(%struct.xa_state*) #1

declare dso_local i64 @xas_not_node(%struct.TYPE_8__*) #1

declare dso_local i32 @xas_advance(%struct.xa_state*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.TYPE_8__* @xa_parent(i32, %struct.TYPE_8__*) #1

declare dso_local i8* @xa_entry(i32, %struct.TYPE_8__*, i64) #1

declare dso_local i64 @xa_is_node(i8*) #1

declare dso_local %struct.TYPE_8__* @xa_to_node(i8*) #1

declare dso_local i32 @xa_is_sibling(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

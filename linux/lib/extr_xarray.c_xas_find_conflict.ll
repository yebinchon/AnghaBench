; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_xarray.c_xas_find_conflict.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_xarray.c_xas_find_conflict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xa_state = type { i64, i32, i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i64, i32 }
%struct.xa_node = type { i32 }

@XA_CHUNK_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xas_find_conflict(%struct.xa_state* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.xa_state*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.xa_node*, align 8
  store %struct.xa_state* %0, %struct.xa_state** %3, align 8
  %6 = load %struct.xa_state*, %struct.xa_state** %3, align 8
  %7 = call i64 @xas_error(%struct.xa_state* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i8* null, i8** %2, align 8
  br label %162

10:                                               ; preds = %1
  %11 = load %struct.xa_state*, %struct.xa_state** %3, align 8
  %12 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %11, i32 0, i32 3
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = icmp ne %struct.TYPE_5__* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  store i8* null, i8** %2, align 8
  br label %162

16:                                               ; preds = %10
  %17 = load %struct.xa_state*, %struct.xa_state** %3, align 8
  %18 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %17, i32 0, i32 3
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = call i64 @xas_top(%struct.TYPE_5__* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %46

22:                                               ; preds = %16
  %23 = load %struct.xa_state*, %struct.xa_state** %3, align 8
  %24 = call i8* @xas_start(%struct.xa_state* %23)
  store i8* %24, i8** %4, align 8
  %25 = load i8*, i8** %4, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  store i8* null, i8** %2, align 8
  br label %162

28:                                               ; preds = %22
  br label %29

29:                                               ; preds = %33, %28
  %30 = load i8*, i8** %4, align 8
  %31 = call i64 @xa_is_node(i8* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %29
  %34 = load i8*, i8** %4, align 8
  %35 = call i8* @xa_to_node(i8* %34)
  %36 = bitcast i8* %35 to %struct.xa_node*
  store %struct.xa_node* %36, %struct.xa_node** %5, align 8
  %37 = load %struct.xa_state*, %struct.xa_state** %3, align 8
  %38 = load %struct.xa_node*, %struct.xa_node** %5, align 8
  %39 = call i8* @xas_descend(%struct.xa_state* %37, %struct.xa_node* %38)
  store i8* %39, i8** %4, align 8
  br label %29

40:                                               ; preds = %29
  %41 = load i8*, i8** %4, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = load i8*, i8** %4, align 8
  store i8* %44, i8** %2, align 8
  br label %162

45:                                               ; preds = %40
  br label %46

46:                                               ; preds = %45, %16
  %47 = load %struct.xa_state*, %struct.xa_state** %3, align 8
  %48 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %47, i32 0, i32 3
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.xa_state*, %struct.xa_state** %3, align 8
  %53 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp sgt i64 %51, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %46
  store i8* null, i8** %2, align 8
  br label %162

57:                                               ; preds = %46
  br label %58

58:                                               ; preds = %153, %127, %110, %57
  %59 = load %struct.xa_state*, %struct.xa_state** %3, align 8
  %60 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %59, i32 0, i32 3
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.xa_state*, %struct.xa_state** %3, align 8
  %65 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %63, %66
  br i1 %67, label %68, label %82

68:                                               ; preds = %58
  %69 = load %struct.xa_state*, %struct.xa_state** %3, align 8
  %70 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.xa_state*, %struct.xa_state** %3, align 8
  %73 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = and i32 %71, %74
  %76 = load %struct.xa_state*, %struct.xa_state** %3, align 8
  %77 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = icmp eq i32 %75, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %68
  br label %154

81:                                               ; preds = %68
  br label %112

82:                                               ; preds = %58
  %83 = load %struct.xa_state*, %struct.xa_state** %3, align 8
  %84 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @XA_CHUNK_MASK, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %111

88:                                               ; preds = %82
  %89 = load %struct.xa_state*, %struct.xa_state** %3, align 8
  %90 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %89, i32 0, i32 3
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.xa_state*, %struct.xa_state** %3, align 8
  %95 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 8
  %96 = load %struct.xa_state*, %struct.xa_state** %3, align 8
  %97 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.xa_state*, %struct.xa_state** %3, align 8
  %100 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %99, i32 0, i32 3
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %100, align 8
  %102 = call %struct.TYPE_5__* @xa_parent_locked(i32 %98, %struct.TYPE_5__* %101)
  %103 = load %struct.xa_state*, %struct.xa_state** %3, align 8
  %104 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %103, i32 0, i32 3
  store %struct.TYPE_5__* %102, %struct.TYPE_5__** %104, align 8
  %105 = load %struct.xa_state*, %struct.xa_state** %3, align 8
  %106 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %105, i32 0, i32 3
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %106, align 8
  %108 = icmp ne %struct.TYPE_5__* %107, null
  br i1 %108, label %110, label %109

109:                                              ; preds = %88
  br label %154

110:                                              ; preds = %88
  br label %58

111:                                              ; preds = %82
  br label %112

112:                                              ; preds = %111, %81
  %113 = load %struct.xa_state*, %struct.xa_state** %3, align 8
  %114 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.xa_state*, %struct.xa_state** %3, align 8
  %117 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %116, i32 0, i32 3
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %117, align 8
  %119 = load %struct.xa_state*, %struct.xa_state** %3, align 8
  %120 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %120, align 8
  %123 = call i8* @xa_entry_locked(i32 %115, %struct.TYPE_5__* %118, i32 %122)
  store i8* %123, i8** %4, align 8
  %124 = load i8*, i8** %4, align 8
  %125 = call i64 @xa_is_sibling(i8* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %112
  br label %58

128:                                              ; preds = %112
  br label %129

129:                                              ; preds = %133, %128
  %130 = load i8*, i8** %4, align 8
  %131 = call i64 @xa_is_node(i8* %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %148

133:                                              ; preds = %129
  %134 = load i8*, i8** %4, align 8
  %135 = call i8* @xa_to_node(i8* %134)
  %136 = bitcast i8* %135 to %struct.TYPE_5__*
  %137 = load %struct.xa_state*, %struct.xa_state** %3, align 8
  %138 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %137, i32 0, i32 3
  store %struct.TYPE_5__* %136, %struct.TYPE_5__** %138, align 8
  %139 = load %struct.xa_state*, %struct.xa_state** %3, align 8
  %140 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %139, i32 0, i32 1
  store i32 0, i32* %140, align 8
  %141 = load %struct.xa_state*, %struct.xa_state** %3, align 8
  %142 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %141, i32 0, i32 4
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.xa_state*, %struct.xa_state** %3, align 8
  %145 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %144, i32 0, i32 3
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** %145, align 8
  %147 = call i8* @xa_entry_locked(i32 %143, %struct.TYPE_5__* %146, i32 0)
  store i8* %147, i8** %4, align 8
  br label %129

148:                                              ; preds = %129
  %149 = load i8*, i8** %4, align 8
  %150 = icmp ne i8* %149, null
  br i1 %150, label %151, label %153

151:                                              ; preds = %148
  %152 = load i8*, i8** %4, align 8
  store i8* %152, i8** %2, align 8
  br label %162

153:                                              ; preds = %148
  br label %58

154:                                              ; preds = %109, %80
  %155 = load %struct.xa_state*, %struct.xa_state** %3, align 8
  %156 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.xa_state*, %struct.xa_state** %3, align 8
  %159 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 8
  %161 = sub nsw i32 %160, %157
  store i32 %161, i32* %159, align 8
  store i8* null, i8** %2, align 8
  br label %162

162:                                              ; preds = %154, %151, %56, %43, %27, %15, %9
  %163 = load i8*, i8** %2, align 8
  ret i8* %163
}

declare dso_local i64 @xas_error(%struct.xa_state*) #1

declare dso_local i64 @xas_top(%struct.TYPE_5__*) #1

declare dso_local i8* @xas_start(%struct.xa_state*) #1

declare dso_local i64 @xa_is_node(i8*) #1

declare dso_local i8* @xa_to_node(i8*) #1

declare dso_local i8* @xas_descend(%struct.xa_state*, %struct.xa_node*) #1

declare dso_local %struct.TYPE_5__* @xa_parent_locked(i32, %struct.TYPE_5__*) #1

declare dso_local i8* @xa_entry_locked(i32, %struct.TYPE_5__*, i32) #1

declare dso_local i64 @xa_is_sibling(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

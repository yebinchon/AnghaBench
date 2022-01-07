; ModuleID = '/home/carl/AnghaBench/linux/scripts/kconfig/extr_menu.c_sym_check_prop.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/kconfig/extr_menu.c_sym_check_prop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symbol = type { i32, i32, %struct.property* }
%struct.property = type { i32, %struct.TYPE_6__*, %struct.property* }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__, i32 }
%struct.TYPE_5__ = type { %struct.symbol* }
%struct.TYPE_4__ = type { %struct.symbol* }

@S_STRING = common dso_local global i32 0, align 4
@S_INT = common dso_local global i32 0, align 4
@S_HEX = common dso_local global i32 0, align 4
@E_SYMBOL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"default for config symbol '%s' must be a single symbol\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"'%s': number is invalid\00", align 1
@.str.2 = private unnamed_addr constant [58 x i8] c"choice default symbol '%s' is not contained in the choice\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"select\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"imply\00", align 1
@S_BOOLEAN = common dso_local global i32 0, align 4
@S_TRISTATE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [56 x i8] c"config symbol '%s' uses %s, but is not bool or tristate\00", align 1
@S_UNKNOWN = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [74 x i8] c"'%s' has wrong type. '%s' only accept arguments of bool and tristate type\00", align 1
@.str.7 = private unnamed_addr constant [45 x i8] c"range is only allowed for int or hex symbols\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"range is invalid\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.symbol*)* @sym_check_prop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sym_check_prop(%struct.symbol* %0) #0 {
  %2 = alloca %struct.symbol*, align 8
  %3 = alloca %struct.property*, align 8
  %4 = alloca %struct.symbol*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.property*, align 8
  store %struct.symbol* %0, %struct.symbol** %2, align 8
  %7 = load %struct.symbol*, %struct.symbol** %2, align 8
  %8 = getelementptr inbounds %struct.symbol, %struct.symbol* %7, i32 0, i32 2
  %9 = load %struct.property*, %struct.property** %8, align 8
  store %struct.property* %9, %struct.property** %3, align 8
  br label %10

10:                                               ; preds = %201, %1
  %11 = load %struct.property*, %struct.property** %3, align 8
  %12 = icmp ne %struct.property* %11, null
  br i1 %12, label %13, label %205

13:                                               ; preds = %10
  %14 = load %struct.property*, %struct.property** %3, align 8
  %15 = getelementptr inbounds %struct.property, %struct.property* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  switch i32 %16, label %199 [
    i32 131, label %17
    i32 128, label %106
    i32 130, label %106
    i32 129, label %160
  ]

17:                                               ; preds = %13
  %18 = load %struct.symbol*, %struct.symbol** %2, align 8
  %19 = getelementptr inbounds %struct.symbol, %struct.symbol* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @S_STRING, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %35, label %23

23:                                               ; preds = %17
  %24 = load %struct.symbol*, %struct.symbol** %2, align 8
  %25 = getelementptr inbounds %struct.symbol, %struct.symbol* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @S_INT, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %35, label %29

29:                                               ; preds = %23
  %30 = load %struct.symbol*, %struct.symbol** %2, align 8
  %31 = getelementptr inbounds %struct.symbol, %struct.symbol* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @S_HEX, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %49

35:                                               ; preds = %29, %23, %17
  %36 = load %struct.property*, %struct.property** %3, align 8
  %37 = getelementptr inbounds %struct.property, %struct.property* %36, i32 0, i32 1
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @E_SYMBOL, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %35
  %44 = load %struct.property*, %struct.property** %3, align 8
  %45 = load %struct.symbol*, %struct.symbol** %2, align 8
  %46 = getelementptr inbounds %struct.symbol, %struct.symbol* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 (%struct.property*, i8*, ...) @prop_warn(%struct.property* %44, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %47)
  br label %49

49:                                               ; preds = %43, %35, %29
  %50 = load %struct.property*, %struct.property** %3, align 8
  %51 = getelementptr inbounds %struct.property, %struct.property* %50, i32 0, i32 1
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @E_SYMBOL, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  br label %200

58:                                               ; preds = %49
  %59 = load %struct.property*, %struct.property** %3, align 8
  %60 = call %struct.symbol* @prop_get_symbol(%struct.property* %59)
  store %struct.symbol* %60, %struct.symbol** %4, align 8
  %61 = load %struct.symbol*, %struct.symbol** %2, align 8
  %62 = getelementptr inbounds %struct.symbol, %struct.symbol* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @S_HEX, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %72, label %66

66:                                               ; preds = %58
  %67 = load %struct.symbol*, %struct.symbol** %2, align 8
  %68 = getelementptr inbounds %struct.symbol, %struct.symbol* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @S_INT, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %84

72:                                               ; preds = %66, %58
  %73 = load %struct.symbol*, %struct.symbol** %2, align 8
  %74 = load %struct.symbol*, %struct.symbol** %4, align 8
  %75 = call i32 @menu_validate_number(%struct.symbol* %73, %struct.symbol* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %83, label %77

77:                                               ; preds = %72
  %78 = load %struct.property*, %struct.property** %3, align 8
  %79 = load %struct.symbol*, %struct.symbol** %2, align 8
  %80 = getelementptr inbounds %struct.symbol, %struct.symbol* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 (%struct.property*, i8*, ...) @prop_warn(%struct.property* %78, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %81)
  br label %83

83:                                               ; preds = %77, %72
  br label %84

84:                                               ; preds = %83, %66
  %85 = load %struct.symbol*, %struct.symbol** %2, align 8
  %86 = call i32 @sym_is_choice(%struct.symbol* %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %105

88:                                               ; preds = %84
  %89 = load %struct.symbol*, %struct.symbol** %4, align 8
  %90 = call %struct.property* @sym_get_choice_prop(%struct.symbol* %89)
  store %struct.property* %90, %struct.property** %6, align 8
  %91 = load %struct.property*, %struct.property** %6, align 8
  %92 = icmp ne %struct.property* %91, null
  br i1 %92, label %93, label %98

93:                                               ; preds = %88
  %94 = load %struct.property*, %struct.property** %6, align 8
  %95 = call %struct.symbol* @prop_get_symbol(%struct.property* %94)
  %96 = load %struct.symbol*, %struct.symbol** %2, align 8
  %97 = icmp ne %struct.symbol* %95, %96
  br i1 %97, label %98, label %104

98:                                               ; preds = %93, %88
  %99 = load %struct.property*, %struct.property** %3, align 8
  %100 = load %struct.symbol*, %struct.symbol** %4, align 8
  %101 = getelementptr inbounds %struct.symbol, %struct.symbol* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 (%struct.property*, i8*, ...) @prop_warn(%struct.property* %99, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i32 %102)
  br label %104

104:                                              ; preds = %98, %93
  br label %105

105:                                              ; preds = %104, %84
  br label %200

106:                                              ; preds = %13, %13
  %107 = load %struct.property*, %struct.property** %3, align 8
  %108 = getelementptr inbounds %struct.property, %struct.property* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = icmp eq i32 %109, 128
  %111 = zext i1 %110 to i64
  %112 = select i1 %110, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0)
  store i8* %112, i8** %5, align 8
  %113 = load %struct.property*, %struct.property** %3, align 8
  %114 = call %struct.symbol* @prop_get_symbol(%struct.property* %113)
  store %struct.symbol* %114, %struct.symbol** %4, align 8
  %115 = load %struct.symbol*, %struct.symbol** %2, align 8
  %116 = getelementptr inbounds %struct.symbol, %struct.symbol* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @S_BOOLEAN, align 4
  %119 = icmp ne i32 %117, %118
  br i1 %119, label %120, label %133

120:                                              ; preds = %106
  %121 = load %struct.symbol*, %struct.symbol** %2, align 8
  %122 = getelementptr inbounds %struct.symbol, %struct.symbol* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @S_TRISTATE, align 4
  %125 = icmp ne i32 %123, %124
  br i1 %125, label %126, label %133

126:                                              ; preds = %120
  %127 = load %struct.property*, %struct.property** %3, align 8
  %128 = load %struct.symbol*, %struct.symbol** %2, align 8
  %129 = getelementptr inbounds %struct.symbol, %struct.symbol* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load i8*, i8** %5, align 8
  %132 = call i32 (%struct.property*, i8*, ...) @prop_warn(%struct.property* %127, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.5, i64 0, i64 0), i32 %130, i8* %131)
  br label %159

133:                                              ; preds = %120, %106
  %134 = load %struct.symbol*, %struct.symbol** %4, align 8
  %135 = getelementptr inbounds %struct.symbol, %struct.symbol* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @S_UNKNOWN, align 4
  %138 = icmp ne i32 %136, %137
  br i1 %138, label %139, label %158

139:                                              ; preds = %133
  %140 = load %struct.symbol*, %struct.symbol** %4, align 8
  %141 = getelementptr inbounds %struct.symbol, %struct.symbol* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @S_BOOLEAN, align 4
  %144 = icmp ne i32 %142, %143
  br i1 %144, label %145, label %158

145:                                              ; preds = %139
  %146 = load %struct.symbol*, %struct.symbol** %4, align 8
  %147 = getelementptr inbounds %struct.symbol, %struct.symbol* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* @S_TRISTATE, align 4
  %150 = icmp ne i32 %148, %149
  br i1 %150, label %151, label %158

151:                                              ; preds = %145
  %152 = load %struct.property*, %struct.property** %3, align 8
  %153 = load %struct.symbol*, %struct.symbol** %4, align 8
  %154 = getelementptr inbounds %struct.symbol, %struct.symbol* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = load i8*, i8** %5, align 8
  %157 = call i32 (%struct.property*, i8*, ...) @prop_warn(%struct.property* %152, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.6, i64 0, i64 0), i32 %155, i8* %156)
  br label %158

158:                                              ; preds = %151, %145, %139, %133
  br label %159

159:                                              ; preds = %158, %126
  br label %200

160:                                              ; preds = %13
  %161 = load %struct.symbol*, %struct.symbol** %2, align 8
  %162 = getelementptr inbounds %struct.symbol, %struct.symbol* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* @S_INT, align 4
  %165 = icmp ne i32 %163, %164
  br i1 %165, label %166, label %175

166:                                              ; preds = %160
  %167 = load %struct.symbol*, %struct.symbol** %2, align 8
  %168 = getelementptr inbounds %struct.symbol, %struct.symbol* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* @S_HEX, align 4
  %171 = icmp ne i32 %169, %170
  br i1 %171, label %172, label %175

172:                                              ; preds = %166
  %173 = load %struct.property*, %struct.property** %3, align 8
  %174 = call i32 (%struct.property*, i8*, ...) @prop_warn(%struct.property* %173, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i64 0, i64 0))
  br label %175

175:                                              ; preds = %172, %166, %160
  %176 = load %struct.symbol*, %struct.symbol** %2, align 8
  %177 = load %struct.property*, %struct.property** %3, align 8
  %178 = getelementptr inbounds %struct.property, %struct.property* %177, i32 0, i32 1
  %179 = load %struct.TYPE_6__*, %struct.TYPE_6__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 0
  %182 = load %struct.symbol*, %struct.symbol** %181, align 8
  %183 = call i32 @menu_validate_number(%struct.symbol* %176, %struct.symbol* %182)
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %195

185:                                              ; preds = %175
  %186 = load %struct.symbol*, %struct.symbol** %2, align 8
  %187 = load %struct.property*, %struct.property** %3, align 8
  %188 = getelementptr inbounds %struct.property, %struct.property* %187, i32 0, i32 1
  %189 = load %struct.TYPE_6__*, %struct.TYPE_6__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %190, i32 0, i32 0
  %192 = load %struct.symbol*, %struct.symbol** %191, align 8
  %193 = call i32 @menu_validate_number(%struct.symbol* %186, %struct.symbol* %192)
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %198, label %195

195:                                              ; preds = %185, %175
  %196 = load %struct.property*, %struct.property** %3, align 8
  %197 = call i32 (%struct.property*, i8*, ...) @prop_warn(%struct.property* %196, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0))
  br label %198

198:                                              ; preds = %195, %185
  br label %200

199:                                              ; preds = %13
  br label %200

200:                                              ; preds = %199, %198, %159, %105, %57
  br label %201

201:                                              ; preds = %200
  %202 = load %struct.property*, %struct.property** %3, align 8
  %203 = getelementptr inbounds %struct.property, %struct.property* %202, i32 0, i32 2
  %204 = load %struct.property*, %struct.property** %203, align 8
  store %struct.property* %204, %struct.property** %3, align 8
  br label %10

205:                                              ; preds = %10
  ret void
}

declare dso_local i32 @prop_warn(%struct.property*, i8*, ...) #1

declare dso_local %struct.symbol* @prop_get_symbol(%struct.property*) #1

declare dso_local i32 @menu_validate_number(%struct.symbol*, %struct.symbol*) #1

declare dso_local i32 @sym_is_choice(%struct.symbol*) #1

declare dso_local %struct.property* @sym_get_choice_prop(%struct.symbol*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
